# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
posts = Post.create([{title: "Post 1", content: "some content in here", category: "board meeting"},
                     {title: "Post 2", content: "some other content", category: "member meeting"},
                     {title: "Post 3", content: "a fishing trip", category: "fishing trip"}])
