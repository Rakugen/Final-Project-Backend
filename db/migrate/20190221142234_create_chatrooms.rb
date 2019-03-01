class CreateChatrooms < ActiveRecord::Migration[5.2]
  def change
    create_table :chatrooms do |t|
      t.string :name
      t.integer :admin_id, default: 1
      t.string :description, default: "No Description."

      t.timestamps
    end
  end
end
