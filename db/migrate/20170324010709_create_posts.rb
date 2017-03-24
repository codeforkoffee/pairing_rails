class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.integer :sender_id, index: true
      t.integer :recipient_id, index: true
      t.string :message

      t.timestamps null: false
    end

    add_foreign_key :posts, :users, column: :sender_id
    add_foreign_key :posts, :users, column: :recipient_id
  end
end
