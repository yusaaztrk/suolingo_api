class CreateChatSessions < ActiveRecord::Migration[7.2]
  def change
    create_table :chat_sessions do |t|
      t.integer :user_id
      t.references :avatar, null: false, foreign_key: true
      t.string :title

      t.timestamps
    end
  end
end
