class CreateEventFoundations < ActiveRecord::Migration[5.1]
  def change
    create_table :event_foundations do |t|
      t.string :title
      t.string :description
      t.integer :points
      t.datetime :initialDate
      t.datetime :finalDate
      t.integer :active
      t.references :foundation, foreign_key: true

      t.timestamps
    end
  end
end
