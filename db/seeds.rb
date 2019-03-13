# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Zone.delete_all
Animal.delete_all

zone1 = Zone.create(id: 1, nom: "Lleons", clima: "Calid", temperatura: 25, humitat: 10)
zone2 = Zone.create(id: 2, nom: "Elefans", clima: "Tropical", temperatura: 27, humitat: 15)
zone3 = Zone.create(id: 3, nom: "Jirafas", clima: "Tropical", temperatura: 24, humitat: 12)
zone4 = Zone.create(id: 4, nom: "Mono", clima: "Mediterrani", temperatura: 26, humitat: 17)
zone5 = Zone.create(id: 5, nom: "Ballenas", clima: "Artic", temperatura: 5, humitat: 11)

animal1 = Animal.create(id: 1, nom: "Pepe", raza: "Leon", zone: zone1, any_naixement: "01-02-2018" , user: 2)
