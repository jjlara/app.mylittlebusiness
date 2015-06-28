class CreateMyprofiles < ActiveRecord::Migration
  def change
    create_table :myprofiles do |t|
      t.string :descripcion
      t.string :informacion_util
      t.integer :user_id

      t.timestamps
    end
  end
end
