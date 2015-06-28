class CreateFotosprofiles < ActiveRecord::Migration
  def change
    create_table :fotosprofiles do |t|
      t.integer :user_id

      t.timestamps
    end
  end
end
