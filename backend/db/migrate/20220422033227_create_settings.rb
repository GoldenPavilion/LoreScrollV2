class CreateSettings < ActiveRecord::Migration[6.1]
  def change
    create_table :settings do |t|
      t.string :name
      t.string :summary

      t.timestamps
    end
  end
end
