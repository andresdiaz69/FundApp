class CreateFoundations < ActiveRecord::Migration[5.1]
  def change
    create_table :foundations do |t|
      t.string :title
      t.text :body
      t.integer :count

      t.timestamps
    end
  end
end
