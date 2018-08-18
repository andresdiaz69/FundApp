class CreatePerfilRols < ActiveRecord::Migration[5.1]
  def change
    create_table :perfil_rols do |t|
      t.integer :id_perfil
      t.integer :id_rol
      t.integer :activo

      t.timestamps
    end
  end
end
