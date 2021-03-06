class CreateConcerts < ActiveRecord::Migration[5.0]
  def change
    create_table :concerts do |t|
      t.string :artist
      t.string :venue
      t.string :city
      t.date :date
      t.string :description
      t.integer :price
      t.datetime :done_at

      t.timestamps
    end
  end
end
