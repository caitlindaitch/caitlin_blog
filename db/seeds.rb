# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Post.destroy_all
Comment.destroy_all

post1 = Post.create(title: "Shabby Chic", author: "Caitlin", content: "Polaroid shabby chic paleo photo booth, raw denim synth man braid green juice. Tumblr keytar messenger bag, drinking vinegar cardigan bitters single-origin coffee. Blue bottle bitters umami, master cleanse retro skateboard craft beer man bun. Normcore sriracha microdosing echo park, pinterest locavore dreamcatcher food truck typewriter green juice truffaut gastropub. 8-bit cliche meditation iPhone heirloom. Ennui vice tumblr truffaut roof party. Health goth kombucha chartreuse authentic readymade sustainable, paleo migas you probably haven't heard of them cliche.")

post2 = Post.create(title: "Single-Origin Coffee", author: "Becky", content: "Blog franzen single-origin coffee, keffiyeh deep v kickstarter cronut vegan marfa typewriter kinfolk shoreditch pitchfork lo-fi. Neutra shoreditch forage, lumbersexual VHS man bun banjo disrupt. Brooklyn roof party cred whatever. Craft beer paleo cardigan truffaut 90's kale chips. Chicharrones pork belly cardigan seitan food truck offal ramps heirloom. Portland direct trade single-origin coffee trust fund. Offal readymade farm-to-table swag.")

comment1 = post2.comments.create(content: "This post sucks!", author: "Voldemort")
