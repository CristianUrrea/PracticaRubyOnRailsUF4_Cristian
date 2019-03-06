# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Zone.delete_all

Zone.create!([
  {id: 1, nom: "Lleons", clima: "Calid", temperatura: 25, humitat: 10},
  {id: 2, nom: "Elefans", clima: "Tropical", temperatura: 27, humitat: 15},
  {id: 3, nom: "Jirafas", clima: "Tropical", temperatura: 24, humitat: 12},
  {id: 4, nom: "Mono", clima: "Mediterrani", temperatura: 26, humitat: 9},
  {id: 5, nom: "Ballenas", clima: "Artic", temperatura: 5, humitat: 1}
])
