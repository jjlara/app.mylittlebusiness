class CreatePromos < ActiveRecord::Migration
  def change
    create_table :promos do |t|
      t.string :nombre
      t.string :descripcion
      t.string :enlace
      t.boolean :seguir
      t.integer :user_id

      t.timestamps
    end
  end
end
