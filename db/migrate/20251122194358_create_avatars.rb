class CreateAvatars < ActiveRecord::Migration[7.2]
  def change
    create_table :avatars do |t|
      t.string :title
      t.string :name
      t.string :idle_video_url
      t.text :description

      t.timestamps
    end
  end
end
