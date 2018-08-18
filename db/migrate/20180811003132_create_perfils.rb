class CreatePerfils < ActiveRecord::Migration[5.1]
  def change
    create_table :perfils do |t|
      t.integer :id_perfil
      t.string :descripcion_perfil
      t.integer :activo

      t.timestamps
    end
  end
end
