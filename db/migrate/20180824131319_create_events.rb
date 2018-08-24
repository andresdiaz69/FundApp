class CreateEvents < ActiveRecord::Migration[5.1]
  def change
    create_table :events do |t|
      t.string :title
      t.string :description
      t.integer :poitns
      t.datetime :initial_date
      t.datetime :final_date
      t.integer :active

      t.timestamps
    end
  end
end
