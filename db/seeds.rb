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
puts "Finished!"
