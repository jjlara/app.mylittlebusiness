class AddTiponegocioToMyprofile < ActiveRecord::Migration
  def change
    add_column :myprofiles, :tiponegocio, :string
  end
end
