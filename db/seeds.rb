# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Session.destroy_all

Session.create!(
  start_date: DateTime.new(2016,8,22),
  end_date: DateTime.new(2016,8,28),
  location: 'Luminy, Marseille',
  description: "En plein coeur du parc national des calanques, Sugiton, Morgiou et Sormiou s'offrent à vous",
  name: 'Luminy, Aout 2016',
  image: 'sessions/luminy.jpg',
  price: 980
  )

Session.create!(
  start_date: DateTime.new(2016,11,20),
  end_date: DateTime.new(2016,11,27),
  location: 'Callelongue, 13008 Marseille',
  description: "Callelongue est une calanque magique tout au bout de la route du bord de mer de Marseille",
  image: "sessions/callelongue.jpg",
  name: 'Callelongue, Nov 2016',
  price: 980
  )

User.destroy_all
User.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password')

Candidate.destroy_all
Candidate.create!(first_name:'Alan', last_name:'Boix', email: 'alan.boix@gmail.com', session: Session.first)
