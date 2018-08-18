class CreateTiposFundacions < ActiveRecord::Migration[5.1]
  def change
    create_table :tipos_fundacions do |t|
      t.integer :id_tipo
      t.string :nombre
      t.string :descripcion
      t.integer :activo

      t.timestamps
    end
  end
end
