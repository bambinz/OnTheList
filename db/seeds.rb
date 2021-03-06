# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


list = List.find_or_create_by(name: "Shopping List")
items = [Item.find_or_create_by(name: "Salmon"), Item.find_or_create_by(name: "Jerky"), Item.find_or_create_by(name: "Figs")]
list.list_items.find_or_create_by(item: items.first, quantity: "2 Pieces")
list.list_items.find_or_create_by(item: items.second, quantity: "1 Bag")
list.list_items.find_or_create_by(item: items.third, quantity: "3")
