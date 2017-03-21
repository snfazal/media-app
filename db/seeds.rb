# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Media.destroy_all

user1 = User.create!(username: 's', email: 's@s.com', password: 's')

user1.media.create!([{
  name: "Mean Stack Tutorial",
  link: "https://www.youtube.com/watch?v=BRIinAB8qeE&feature=youtu.be",
  image_url: ""
}])
