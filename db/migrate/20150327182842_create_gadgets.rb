class CreateGadgets < ActiveRecord::Migration
  def change
    create_table :gadgets do |t|
      t.string :nombre
      t.string :descripcion
      t.boolean :activado
      t.integer :user_id

      t.timestamps
    end
  end
end
