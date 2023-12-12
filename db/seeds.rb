# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
puts "Cleaning database..."
Movie.destroy_all

puts "Creating movies..."
titanic3 = {title: "titanic 3", description: "super!", poster_url: "https://fr.web.img6.acsta.net/c_310_420/pictures/23/01/10/16/06/0622119.jpg", rating: 3.4 }
matrix6 =  {title: "matrix 6", description: "super! incredible!", poster_url: "https://fr.web.img4.acsta.net/c_310_420/medias/04/34/49/043449_af.jpg", rating: 4.6 }
[titanic3, matrix6].each do |attributes|
  movie = Movie.create!(attributes)
  puts "Created #{movie.title}"
end

Movie.create(title: "Wonder Woman 1984", description: "Wonder Woman comes into conflict with the Soviet Union during the Cold War in the 1980s", poster_url: "https://image.tmdb.org/t/p/original/8UlWHLMpgZm9bx6QYh0NFoq67TZ.jpg", rating: 6.9)
Movie.create(title: "The Shawshank Redemption", description: "Framed in the 1940s for double murder, upstanding banker Andy Dufresne begins a new life at the Shawshank prison", poster_url: "https://image.tmdb.org/t/p/original/q6y0Go1tsGEsmtFryDOJo3dEmqu.jpg", rating: 8.7)
Movie.create(title: "Titanic", description: "101-year-old Rose DeWitt Bukater tells the story of her life aboard the Titanic.", poster_url: "https://image.tmdb.org/t/p/original/9xjZS2rlVxm8SFx8kPC3aIGCOYQ.jpg", rating: 7.9)
Movie.create(title: "Ocean's Eight", description: "Debbie Ocean, a criminal mastermind, gathers a crew of female thieves to pull off the heist of the century.", poster_url: "https://image.tmdb.org/t/p/original/MvYpKlpFukTivnlBhizGbkAe3v.jpg", rating: 7.0)

List.create(name: "70s Movies")
List.create(name: "80s Movies")
List.create(name: "90s Movies")



puts "Finished! Created #{Movie.count} movies"
puts "Finished! Created #{List.count} lists"
