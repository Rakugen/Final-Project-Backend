class CreateMessages < ActiveRecord::Migration[5.2]
  def change
    create_table :messages do |t|
      t.string :color
      t.string :username
      t.integer :user_id
      t.integer :chatroom_id
      t.string :message_content

      t.timestamps
    end
  end
end
