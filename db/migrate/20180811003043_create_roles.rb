class CreateRoles < ActiveRecord::Migration[5.1]
  def change
    create_table :roles do |t|
      t.integer :descripcion
      t.string :nombre_rol
      t.string :descripcion_rol
      t.integer :activo

      t.timestamps
    end
  end
end
