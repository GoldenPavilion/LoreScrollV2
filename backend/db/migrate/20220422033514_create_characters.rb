class CreateCharacters < ActiveRecord::Migration[6.1]
  def change
    create_table :characters do |t|
      t.string :name
      t.string :role
      t.string :age
      t.string :gender
      t.string :species
      t.string :job
      t.string :physical
      t.string :personality
      t.string :history
      t.string :motivation

      t.timestamps
    end
  end
end
