# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])

User.create!(email: "brett@bookabook.com", password: "password", username: "brettbook")
User.create!(email: "nadja@bookabook.com", password: "password", username: "nadjabook")
User.create!(email: "irene@bookabook.com", password: "password", username: "irenekichan")
User.create!(email: "nicole@bookabook.com", password: "password",username: "nicolebook")

Book.create!(name: "Harry Potter", author: "JK Rowling", user_id: "2")
Book.create!(name: "Klara and the Sun", author: "Kazuo Ishiguro", user_id: "1")
Book.create!(name: "The Never-Ending Story", author: "Michael Ende", user_id: "3")
Book.create!(name: "Tomorrow and Tomorrow and Tomorrow", author: "Gabrielle Zevin", user_id: "4")
