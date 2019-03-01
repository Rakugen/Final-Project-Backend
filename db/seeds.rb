require 'faker'

def run
  10.times do
    # user = User.find_or_create_by(username:Faker::Name.name, password:"123")
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
    Message.find_or_create_by(username: user.username, user_id:user.id, chatroom_id:chatroom.id, message_content:message)
  end

  30.times do
    join = Join.all.sample
    user = User.find(join.user_id)
    chatroom = user.chatrooms.sample
    message = Faker::Quotes::Shakespeare.hamlet_quote
    Message.find_or_create_by(username: user.username, user_id:user.id, chatroom_id:chatroom.id, message_content:message)
  end
end

puts "Seeding data now..."
run
puts "Done!!"
