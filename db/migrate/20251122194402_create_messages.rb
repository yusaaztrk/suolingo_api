class CreateMessages < ActiveRecord::Migration[7.2]
  def change
    create_table :messages do |t|
      t.references :chat_session, null: false, foreign_key: true
      t.text :content
      t.string :audio_url
      t.boolean :is_user_message

      t.timestamps
    end
  end
end
