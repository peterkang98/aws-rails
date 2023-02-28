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
    {original_name: "SURL", korean_name: "설",  img_location: "faces/surl.jpg", views: 0}
  ]
  artists.each do |artist|
    Artist.create_with(artist).find_or_create_by(original_name: artist[:original_name])
  end
end

task :albums => :environment do
  albums = [
    {title: 'x', img_location: 'x.jfif', artist_id: 1},
    {title: '+', img_location: 'plus.jfif', artist_id: 1}
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

  ]

  songs.each do |song|
    Song.create_with(song).find_or_create_by(title: song[:title])
  end
end