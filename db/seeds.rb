# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
require 'faker'

5.times do
  Artist.create(name: Faker::Music.band, bio: Faker::Lorem.paragraph)
end

5.times do
  Genre.create(name: Faker::Music.genre)
end

20.times do
  Song.create(name: Faker::Music::Phish.song, artist_id: rand(Artist.all.first.id..(Artist.first.id + Artist.all.count)), genre_id: rand(Genre.all.first.id..(Genre.first.id + Genre.all.count)))
end
