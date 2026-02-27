require "faker"

Bookmark.destroy_all
Movie.destroy_all
List.destroy_all
puts "TOUT est détruit"

10.times do
  Movie.create!(
    title: Faker::JapaneseMedia::StudioGhibli.movie,
    overview: Faker::Movie.quote,
    poster_url: "https://image.tmdb.org/t/p/original/8UlWHLMpgZm9bx6QYh0NFoq67TZ.jpg",
    rating: Range.new(1, 10).to_a.sample)
end
puts "Les films sont recrées it's GOOOD!"
