class CreateProfileRoles < ActiveRecord::Migration[5.1]
  def change
    create_table :profile_roles do |t|
      t.references :role, foreign_key: true
      t.references :profile, foreign_key: true
      t.integer :active

      t.timestamps
    end
  end
end
