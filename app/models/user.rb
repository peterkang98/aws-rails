class User < ApplicationRecord
  attr_accessor :remember_token, :activation_token, :reset_token

  has_many :favourites
  has_many :songs, through: :favourites

  before_save { self.email = email.downcase }
  before_create :create_activation_digest
  validates :name, presence: {message: '이름을 입력하세요'}, length: { maximum: 50, message: '이름은 최대 50자로 입력하세요' }
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: {message: '이메일 주소를 입력하세요'}, length: { maximum: 255, message: '이메일 주소는 최대 255자로 입력하세요' },
    format: { with: VALID_EMAIL_REGEX, message: '올바른 이메일 주소를 입력하세요.' }, uniqueness: {message: '이미 사용 중인 이메일 주소입니다'}

  has_secure_password
  validates :password, presence: true, length: { minimum: 6, message: '비밀번호를 최소 6자로 입력하세요' }

  def self.digest(string)
    cost = ActiveModel::SecurePassword.min_cost ? BCrypt::Engine::MIN_COST : BCrypt::Engine.cost
    BCrypt::Password.create(string, cost: cost)
  end

  def self.new_token
    SecureRandom.urlsafe_base64
  end

  def remember
    self.remember_token = User.new_token
    update_attribute(:remember_digest, User.digest(remember_token))
  end

  def forget
    update_attribute(:remember_digest, nil)
  end

  # Returns true if the given token matches the digest
  def authenticated?(attribute, token)
    digest = send("#{attribute}_digest")
    return false if digest.nil?
    BCrypt::Password.new(digest).is_password?(token)
  end

  def activate
    update_columns(activated: true, activated_at: Time.zone.now)
  end

  def send_activation_email
    UserMailer.account_activation(self).deliver_now
  end

  def create_reset_digest
    self.reset_token = User.new_token
    update_columns(reset_digest: User.digest(reset_token), reset_sent_at: Time.zone.now)
  end

  def send_password_reset_email
    UserMailer.password_reset(self).deliver_now
  end

  def password_reset_expired?
    reset_sent_at < 2.hours.ago
  end

  private

  def create_activation_digest
    self.activation_token = User.new_token
    self.activation_digest = User.digest(activation_token)
  end
end
