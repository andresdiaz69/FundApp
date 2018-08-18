class CreateActividadesUsuarios < ActiveRecord::Migration[5.1]
  def change
    create_table :actividades_usuarios do |t|
      t.integer :id_usuario
      t.integer :id_actividad
      t.integer :puntos
      t.datetime :fecha

      t.timestamps
    end
  end
end
