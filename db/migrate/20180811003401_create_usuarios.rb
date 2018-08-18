class CreateUsuarios < ActiveRecord::Migration[5.1]
  def change
    create_table :usuarios do |t|
      t.integer :id_usuario
      t.string :nombre
      t.string :apellido
      t.string :cedula
      t.integer :id_rol
      t.string :email
      t.string :password
      t.integer :activo
      t.integer :puntos
      t.integer :id_fundacion

      t.timestamps
    end
  end
end
