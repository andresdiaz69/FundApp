class CreateFoundations < ActiveRecord::Migration[5.1]
  def change
    create_table :foundations do |t|
      t.string :name
      t.string :nit
      t.integer :active

      t.timestamps
    end
  end
end
