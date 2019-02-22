require 'faker'

def run
  # byebug
  10.times do
    user = User.find_or_create_by(username:Faker::Name.name, password:"123")
    chatroom = Chatroom.find_or_create_by(name:Faker::Games::LeagueOfLegends.champion, description:Faker::Lorem.paragraph)
  end

  20.times do
    Join.find_or_create_by(user_id:(User.all.sample.id), chatroom_id:(Chatroom.all.sample.id))
  end

  30.times do
    join = Join.all.sample
    user = User.find(join.user_id)
    chatroom = user.chatrooms.sample
    message = Faker::Quote.yoda
    Message.find_or_create_by(user_id:user.id, chatroom_id:chatroom.id, message:message)
  end

  30.times do
    join = Join.all.sample
    user = User.find(join.user_id)
    chatroom = user.chatrooms.sample
    message = Faker::Quotes::Shakespeare.hamlet_quote
    Message.find_or_create_by(user_id:user.id, chatroom_id:chatroom.id, message:message)
  end
  # simon = User.find_or_create_by(username:"Simon", password:"123")
  # linda = User.find_or_create_by(username:"Linda", password:"123")
  # c1 = Chatroom.find_or_create_by(name:"Quackroom1",description:"this is where it quacks")
  # c2 = Chatroom.find_or_create_by(name:"Tweeter Room", admin_id:1, description:"no one tweets in this house")
  # Join.find_or_create_by(user_id: simon.id, chatroom_id: c1.id, pending:false)
  # Join.find_or_create_by(user_id: linda.id, chatroom_id: c1.id, pending:false)
  # Join.find_or_create_by(user_id: simon.id, chatroom_id: c2.id)
  # Message.find_or_create_by(user_id: simon.id, chatroom_id: c1.id, message: "hello")
  # Message.find_or_create_by(user_id: linda.id, chatroom_id: c1.id, message: "wut u want")
  # Message.find_or_create_by(user_id: simon.id, chatroom_id: c2.id, message: "no one here")

end

puts "Seeding data now..."
run
puts "Done!!"
