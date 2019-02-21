# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

def run
  simon = User.find_or_create_by(username:"Simon", password:"123")
  linda = User.find_or_create_by(username:"Linda", password:"123")
  c1 = Chatroom.find_or_create_by(name:"Quackroom1",description:"this is where it quacks")
  c2 = Chatroom.find_or_create_by(name:"Tweeter Room", admin_id:1, description:"no one tweets in this house")
  Join.find_or_create_by(user_id: simon.id, chatroom_id: c1.id, pending:false)
  Join.find_or_create_by(user_id: linda.id, chatroom_id: c1.id, pending:false)
  Join.find_or_create_by(user_id: simon.id, chatroom_id: c2.id)
  Message.find_or_create_by(user_id: simon.id, chatroom_id: c1.id, message: "hello")
  Message.find_or_create_by(user_id: linda.id, chatroom_id: c1.id, message: "wut u want")
  Message.find_or_create_by(user_id: simon.id, chatroom_id: c2.id, message: "no one here")

end

puts "Seeding data now..."
run
puts "Done!!"
