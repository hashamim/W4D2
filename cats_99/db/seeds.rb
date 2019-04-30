# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
cats = Cat.create([{name: "Mittens", sex: "F", color: "orange", birth_date: "2015/01/15"}])
cats = Cat.create([{name: "Whiskers", sex: "M", color: "white", birth_date: "2010/01/15"}])
cats = Cat.create([{name: "Tabby", sex: "F", color: "orange", birth_date: "2008/01/21"}])
cats = Cat.create([{name: "Tom", sex: "M", color: "black", birth_date: "2011/07/15"}])