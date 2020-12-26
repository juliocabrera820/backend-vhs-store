# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Movie.create(title: 'hellraiser', year: 1988, length: 100, description: 'xenobits', director: 'idk')
Movie.create(title: 'midsommar', year: 2019, length: 120, description: 'culture and horror', director: 'idk idk')

Genre.create(name: 'horror')
