class CreateStories < ActiveRecord::Migration[6.1]
  def change
    create_table :stories do |t|
      t.string :title
      t.string :genre
      t.string :story_type
      t.string :summary
      t.integer :user_id
      t.integer :setting_id
      

      t.timestamps
    end
  end
end
