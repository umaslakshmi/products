# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Category.create([{name: 'Electronics'}, {name: 'Household'}, {name: 'Gardening'}, {name: 'Automotive'}, {name: 'Ninjas'}])
Product.create(name: 'Hose', description: 'For watering things', pricing: 14.99, category: Category.find(3))
Product.create(name: 'Toaster', description: 'bread warming', pricing: 29.99, category: Category.first)
Product.create(name: 'Pillow', description: 'sleep utensil', pricing: 9.99, category: Category.find(2))