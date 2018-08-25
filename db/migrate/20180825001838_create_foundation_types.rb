class CreateFoundationTypes < ActiveRecord::Migration[5.1]
  def change
    create_table :foundation_types do |t|
      t.string :name
      t.string :description
      t.integer :active

      t.timestamps
    end
  end
end
