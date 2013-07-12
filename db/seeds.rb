# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Genre.destroy_all
Song.destroy_all

['Rock', 'Rap', 'House', 'Pop'].each do |genre|
  Genre.create! name: genre
end

Song.create! title: "It's business time", 
  artist_name: "Flight of the Concords",
  album_name: "Who cares",
  genre: Genre.where(name: 'Rock').first

Song.create! title: "Lovers in a dangerous time", 
  artist_name: "Barenaken Ladies",
  album_name: "Some people really care",
  genre: Genre.where(name: 'Pop').first
