class CreateActividads < ActiveRecord::Migration[5.1]
  def change
    create_table :actividads do |t|
      t.integer :id_actividad
      t.string :titulo
      t.integer :id_fundacion
      t.text :descripcion
      t.integer :puntos
      t.datetime :fecha_inicio
      t.datetime :fecha_fin
      t.string :activo
      t.string :bool

      t.timestamps
    end
  end
end
