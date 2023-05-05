# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

require "open-uri"

# CREATING #

# Destroy all founders
puts "Destroying all founders"
Founder.destroy_all
puts "All founders destroyed"

# Destroy all teams
puts "Destroying all teams"
Team.destroy_all
puts "All teams destroyed"

# Destroy all tracks
puts "Destroying all tracks"
Track.destroy_all
puts "All tracks destroyed"

# Destroy all users
puts "Destroying all users"
User.destroy_all
puts "All users destroyed"

# CREATING #

# Creating founders
puts "Creating founders"
file = URI.open("https://res.cloudinary.com/dscnziher/image/upload/v1683273859/plj6iixjmcb3bbltkqbn.jpg")
julia = Founder.new(name: "Julia", description: "F1 Shot Race founder and CTO")
julia.photo.attach(io: file, filename: "julia_profile.png", content_type: "image/png")
julia.save

puts "Created #{Founder.count} founders"

# Creating teams
puts "Creating teams"
redbull = Team.new(name: "Red bull")
redbull.save
mercedes = Team.new(name: "Mercedes")
mercedes.save
ferrari = Team.new(name: "Ferrari")
ferrari.save
astonmartin = Team.new(name: "Aston Martin")
astonmartin.save
mclaren = Team.new(name: "McLaren")
mclaren.save
alpine = Team.new(name: "Alpine")
alpine.save
haas = Team.new(name: "HaaS")
haas.save
alfaromeo = Team.new(name: "Alfa Romeo")
alfaromeo.save
alphatauri = Team.new(name: "AlphaTauri")
alphatauri.save
williams = Team.new(name: "Williams")
williams.save

puts "Created #{Team.count} teams"

# Creating tracks
puts "Creating tracks"

bahrain = Track.new(name: "Bahrain", this_years_date: "2023-03-04")
bahrain.save
saudiarabia = Track.new(name: "Saudi Arabia", this_years_date: "2023-03-18")
saudiarabia.save
australia = Track.new(name: "Australia", this_years_date: "2023-04-01")
australia.save
baku = Track.new(name: "Baku", this_years_date: "2023-04-28")
baku.save
miami = Track.new(name: "Miami", this_years_date: "2023-05-06")
miami.save
imola = Track.new(name: "Imola", this_years_date: "2023-05-20")
imola.save
monaco = Track.new(name: "Monaco", this_years_date: "2023-05-27")
monaco.save
spain = Track.new(name: "Spain", this_years_date: "2023-06-03")
spain.save
canada = Track.new(name: "Canada", this_years_date: "2023-06-17")
canada.save
austria = Track.new(name: "Austria", this_years_date: "2023-06-30")
austria.save
silverstone = Track.new(name: "Silverstone", this_years_date: "2023-07-08")
silverstone.save
hungary = Track.new(name: "Hungary", this_years_date: "2023-07-22")
hungary.save
spa = Track.new(name: "Spa", this_years_date: "2023-07-28")
spa.save
zandvoort = Track.new(name: "Zandvoort", this_years_date: "2023-08-26")
zandvoort.save
monza = Track.new(name: "Monza", this_years_date: "2023-09-02")
monza.save
singapore = Track.new(name: "Singapore", this_years_date: "2023-09-16")
singapore.save
suzuka = Track.new(name: "Suzuka", this_years_date: "2023-09-23")
suzuka.save
qatar = Track.new(name: "Qatar", this_years_date: "2023-10-06")
qatar.save
cota = Track.new(name: "Cota", this_years_date: "2023-10-20")
cota.save
mexico = Track.new(name: "Mexico", this_years_date: "2023-10-28")
mexico.save
brazil = Track.new(name: "Brazil", this_years_date: "2023-11-03")
brazil.save
lasvegas = Track.new(name: "Las Vegas", this_years_date: "2023-11-18")
lasvegas.save
abudhabi = Track.new(name: "Abu Dhabi", this_years_date: "2023-11-25")
abudhabi.save

puts "Created #{Track.count} tracks"

# Creating Users
puts "Creatin users"
julia = User.new(first_name: "Julia", last_name: "Thuden", email: "julia@gmail.com", password: "password")
julia.save

puts "Created #{User.count} users"
