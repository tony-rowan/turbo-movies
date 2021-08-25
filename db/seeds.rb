# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Movie.create([
  {
    title: "Star Wars: A New Hope",
    image: "https://static0.colliderimages.com/wordpress/wp-content/uploads/2015/12/star-wars-a-new-hope-poster.jpg",
    summary: "The begining of the world's greatest media franchise",
    director: "George Lucas",
    length: "111 mins",
    genre: "Sci-Fi",
    year: "1974"
  },
  {
    title: "Lord of the Rings: The Fellowship of the Ring",
    image: "https://1.bp.blogspot.com/-3Qr51FbCt7A/UP-ccYH1e0I/AAAAAAAAA2w/2aM1a9ZcBnk/s1600/the-lord-of-the-rings-fellowship-of-the-rings_1.jpg",
    summary: "The first installment of the greatest triloogy of films ever made",
    director: "Peter Jackson",
    length: "About 4 years, if the producers hadn't made him cut it down",
    genre: "Fantasy",
    year: "2001"
  },
])
