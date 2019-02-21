class CreateJoins < ActiveRecord::Migration[5.2]
  def change
    create_table :joins do |t|
      t.integer :user_id
      t.integer :chatroom_id
      t.boolean :pending, default: false

      t.timestamps
    end
  end
end
