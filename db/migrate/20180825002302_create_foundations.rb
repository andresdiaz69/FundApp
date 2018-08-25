class CreateFoundations < ActiveRecord::Migration[5.1]
  def change
    create_table :foundations do |t|
      t.string :name
      t.string :nit
      t.integer :active
      t.references :foundation_type, foreign_key: true

      t.timestamps
    end
  end
end
