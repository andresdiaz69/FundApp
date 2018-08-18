class CreateFundacions < ActiveRecord::Migration[5.1]
  def change
    create_table :fundacions do |t|
      t.integer :id_fundacion
      t.string :nombre
      t.string :nit
      t.integer :id_tipo
      t.string :activo
      t.string :bool

      t.timestamps
    end
  end
end
