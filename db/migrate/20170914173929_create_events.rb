class CreateEvents < ActiveRecord::Migration[5.1]
  def change
    create_table :events do |t|
      t.string :name
      t.datetime :time
      t.string :location
      t.integer :category_id, 

      t.timestamps
    end
  end
end
