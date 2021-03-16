# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Quote.delete_all

Quote.create(name: "Past", desc: "The way to get started is to quit talking and begin doing.", username: "izan@grinnell.edu")
Quote.create(name: "Present", desc: "If life were predictable it would cease to be life, and be without flavor.", username: "izan@grinnell.edu")
Quote.create(name: "Past", desc: "Life is what happens when you're busy making other plans.", username: "izan@grinnell.edu")
Quote.create(name: "Future", desc: "The greatest glory in living lies not in never falling, but in rising every time we fall.", username: "izan@grinnell.edu")