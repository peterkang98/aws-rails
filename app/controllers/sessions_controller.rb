class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by(email: params[:session][:email].downcase)
    if user && user.authenticate(params[:session][:password])
      if user.activated?
        log_in user
        params[:session][:remember_me] == '1' ? remember(user) : forget(user)
        redirect_back_or user
      else
        message = "계정이 활성화되지 않았습니다. 활성화 링크가 있는지 이메일을 확인해주세요."
        flash[:warning] = message
        redirect_to root_url
      end
    else
      flash.now[:danger] = '이메일 주소 / 비밀번호를 다시 확인해주세요'
      render 'new', status: :unprocessable_entity
    end
  end

  def destroy
    log_out if logged_in?
    redirect_to root_url, status: :see_other
  end
end
