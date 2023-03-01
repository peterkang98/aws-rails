desc "create data for db"

task :artists => :environment do
  artists = [
    {original_name: "Ed Sheeran", korean_name: "에드 시런", img_location: "faces/ed_sheeran.jfif", views: 0},
    {original_name: "잔나비", korean_name: "잔나비", img_location: "faces/jannabi.jfif", views: 0},
    {original_name: "윤하", korean_name: "윤하", img_location: "faces/yunha.jfif", views: 0},
    {original_name: "あいみょん", korean_name: "아이묭", img_location: "faces/aimyon.jfif", views: 0},
    {original_name: "優里", korean_name: "유우리", img_location: "faces/yuuri.jfif", views: 0},
    {original_name: "Vaundy", korean_name: "바운디",  img_location: "faces/vaundy.jfif", views: 0},
    {original_name: "THORNAPPLE", korean_name: "쏜애플",  img_location: "faces/thornapple.jfif", views: 0},
    {original_name: "back number", korean_name: "백넘버",  img_location: "faces/backnumber.jfif", views: 0},
    {original_name: "RADWIMPS", korean_name: "래드윔프스",  img_location: "faces/radwimps.jfif", views: 0},
    {original_name: "SURL", korean_name: "설",  img_location: "faces/surl.jpg", views: 0},
    {original_name: "혁오", korean_name: "혁오",  img_location: "faces/hyukoh.jfif", views: 0}
  ]
  artists.each do |artist|
    Artist.create_with(artist).find_or_create_by(original_name: artist[:original_name])
  end
end

task :albums => :environment do
  albums = [
    {title: 'x', img_location: 'x.jfif', artist_id: 1},
    {title: '+', img_location: 'plus.jfif', artist_id: 1},
    {title: 'セツナレンサ', img_location: 'setsu.jpg', artist_id: 9},
    {title: 'RADWIMPS 4 ～おかずのごはん～', img_location: 'okazu.jpg', artist_id: 9},
    {title: '전설', img_location: 'legend.jfif', artist_id: 2},
    {title: 'She', img_location: 'she.jfif', artist_id: 2},
    {title: 'END THEORY : Final Edition', img_location: 'endtheory_final.jfif', artist_id: 3},
    {title: '瞬間的シックスセンス', img_location: 'shunkanteki.jfif', artist_id: 4},
    {title: '壱', img_location: 'ichi.jfif', artist_id: 5},
    {title: 'strobo', img_location: 'strobo.jfif', artist_id: 6},
    {title: '踊り子', img_location: 'odoriko.jfif', artist_id: 6},
    {title: '이상기후', img_location: 'strange_weather.jfif', artist_id: 7},
    {title: '서울병', img_location: 'seoul_disease.jpg', artist_id: 7},
    {title: 'bright#7', img_location: 'bright7.jfif', artist_id: 10},
    {title: 'Aren’t You?', img_location: "aren't_you.jfif", artist_id: 10},
    {title: '20', img_location: '20.jfif', artist_id: 11},
    {title: '난 자꾸 말을 더듬고 잠드는 법도 잊었네', img_location: 'i_often_stutter.jfif', artist_id: 7},
    {title: '계몽', img_location: 'enlightment.jfif', artist_id: 7},
  ]

  albums.each do |album|
    Album.create_with(album).find_or_create_by(title: album[:title])
  end
end

task :songs => :environment do
  songs = [
    { title: 'Photograph', artist_id: 1, album_id: 1, bpm: 108, capo: 0,
      lyrics: "", lyricist: 'Ed Sheeran, John McDaid', composer: 'Ed Sheeran, John McDaid', views: 0, youtube_id: 'nSDgHBxUbVQ' },
    { title: 'Thinking Out Loud', artist_id: 1, album_id: 1, bpm: 79, capo: 0,
      lyrics: "", lyricist: 'Amy Wadge, Ed Sheeran', composer: 'Amy Wadge, Ed Sheeran', views: 0, youtube_id: 'lp-EO5I60KA' },
    { title: 'Lego House', artist_id: 1, album_id: 2, bpm: 80, capo: 0,
      lyrics: "", lyricist: 'Ed Sheeran, Jake Gosling', composer: 'Ed Sheeran, Jake Gosling', views: 0, youtube_id: 'c4BLVznuWnU' },
    { title: 'The A Team', artist_id: 1, album_id: 2, bpm: 85, capo: 2,
      lyrics: "", lyricist: 'Ed Sheeran, Jake Gosling', composer: 'Ed Sheeran, Jake Gosling', views: 0, youtube_id: 'UAWcs5H-qgQ' },
    { title: 'バイ・マイ・サイ', artist_id: 9, album_id: 3, bpm: 96, capo: 4,
      lyrics: "", lyricist: '野田洋次郎', composer: '野田洋次郎', views: 0, youtube_id: 'BIfY2s2A4IU' },
    { title: '傘拍子', artist_id: 9, album_id: 4, bpm: 91, capo: -1,
      lyrics: "", lyricist: '野田洋次郎', composer: '野田洋次郎', views: 0, youtube_id: 'fWnAbGnBdVo' },
    { title: '주저하는 연인들을 위해', artist_id: 2, album_id: 5, bpm: 74, capo: 1,
      lyrics: "", lyricist: '최정훈', composer: '최정훈, 김도형, 유영현', views: 0, youtube_id: 'GpQ222I1ULc' },
    { title: 'She', artist_id: 2, album_id: 6, bpm: 80, capo: 2,
      lyrics: "", lyricist: '최정훈', composer: '잔나비', views: 0, youtube_id: 'UbSlWaerUIE' },
    { title: '사건의 지평선', artist_id: 3, album_id: 7, bpm: 98, capo: 2,
      lyrics: "", lyricist: '윤하', composer: '윤하, JEWNO', views: 0, youtube_id: 'BBdC1rl5sKY' },
    { title: 'マリーゴールド', artist_id: 4, album_id: 8, bpm: 106, capo: 2,
      lyrics: "", lyricist: 'あいみょん', composer: 'あいみょん', views: 0, youtube_id: '0xSiBpUdW4E' },
    { title: 'かくれんぼ', artist_id: 5, album_id: 9, bpm: 78, capo: 2,
      lyrics: "", lyricist: '優里', composer: '優里', views: 0, youtube_id: '7W-6qJnza5w' },
    { title: 'ドライフラワー', artist_id: 5, album_id: 9, bpm: 74, capo: 0,
      lyrics: "", lyricist: '優里', composer: '優里', views: 0, youtube_id: 'kzZ6KXDM1RI' },
    { title: 'ベテルギウス', artist_id: 5, album_id: 9, bpm: 90, capo: 3,
      lyrics: "", lyricist: '優里', composer: '優里', views: 0, youtube_id: 'cbqvxDTLMps' },
    { title: '怪獣の花唄', artist_id: 6, album_id: 10, bpm: 150, capo: 0,
      lyrics: "", lyricist: 'Vaundy', composer: 'Vaundy', views: 0, youtube_id: 'UM9XNpgrqVk' },
    { title: 'napori', artist_id: 6, album_id: 10, bpm: 65, capo: 4,
      lyrics: "", lyricist: 'Vaundy', composer: 'Vaundy', views: 0, youtube_id: 'ZeIGVnkYX04' },
    { title: '踊り子', artist_id: 6, album_id: 11, bpm: 157, capo: 0,
      lyrics: "", lyricist: 'Vaundy', composer: 'Vaundy', views: 0, youtube_id: '7HgJIAUtICU' },
    { title: '시퍼런 봄', artist_id: 7, album_id: 12, bpm: 186, capo: 0,
      lyrics: "", lyricist: '윤성현', composer: '심재현, 윤성현', views: 0, youtube_id: nil },
    { title: '남극', artist_id: 7, album_id: 12, bpm: 120, capo: 0,
      lyrics: "", lyricist: '윤성현', composer: '윤성현', views: 0, youtube_id: nil },
    { title: '아지랑이', artist_id: 7, album_id: 12, bpm: 76, capo: 0,
      lyrics: "", lyricist: '윤성현', composer: '윤성현', views: 0, youtube_id: nil },
    { title: '피난', artist_id: 7, album_id: 12, bpm: 162, capo: 0,
      lyrics: "", lyricist: '윤성현', composer: '윤성현', views: 0, youtube_id: nil },
    { title: '낯선 열대', artist_id: 7, album_id: 12, bpm: 168, capo: 0,
      lyrics: "", lyricist: '윤성현', composer: '윤성현', views: 0, youtube_id: 'U6IuopxXHyg' },
    { title: '한낮', artist_id: 7, album_id: 13, bpm: 148, capo: 0,
      lyrics: "", lyricist: '윤성현', composer: '윤성현', views: 0, youtube_id: nil },
    { title: '서울', artist_id: 7, album_id: 13, bpm: 68, capo: 0,
      lyrics: "", lyricist: '윤성현', composer: '윤성현', views: 0, youtube_id: '4H2G9NWVo3Q' },
    { title: '여기에 있자', artist_id: 10, album_id: 14, bpm: 66, capo: 0,
      lyrics: "", lyricist: 'SURL', composer: 'SURL', views: 0, youtube_id: 'MgsAqBd1HOQ' },
    { title: '눈', artist_id: 10, album_id: 15, bpm: 86, capo: 0,
      lyrics: "", lyricist: 'SURL', composer: 'SURL', views: 0, youtube_id: 'SV6bIRBiPeQ' },
    { title: '위잉위잉', artist_id: 11, album_id: 16, bpm: 125, capo: 0,
      lyrics: "", lyricist: '오혁', composer: '오혁', views: 0, youtube_id: 'IUoTjkS242c' },
    { title: '이유', artist_id: 7, album_id: 17, bpm: 108, capo: 1,
      lyrics: "", lyricist: '윤성현', composer: '윤성현', views: 0, youtube_id: nil },
    { title: '매미는 비가 와도 운다', artist_id: 7, album_id: 17, bpm: 127, capo: 1,
      lyrics: "", lyricist: '윤성현', composer: '윤성현', views: 0, youtube_id: 'ySVlvfWm1Hc' },
    { title: '로마네스크', artist_id: 7, album_id: 18, bpm: 86, capo: 2,
      lyrics: "", lyricist: '윤성현', composer: '홍동균', views: 0, youtube_id: 'd9iPnELxm3M' },
  ]

  songs.each do |song|
    Song.create_with(song).find_or_create_by(title: song[:title])
  end
end

task :categories => :environment do
  categories = [
    { name: '한국' },
    { name: '일본' },
    { name: '영국' },
    { name: '미국' },
    { name: '밴드' },
    { name: '솔로' },
    { name: 'OST' }
  ]

  categories.each do |category|
    Category.create_with(category).find_or_create_by(name: category[:name])
  end
end

task :categories_songs => :environment do
  category = Category.find_by(name: 'OST')
  song_ids = [13]

  song_ids.each do |id|
    song = Song.find(id)
    category.songs << song
  end
end
