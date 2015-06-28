class AddNombredenegocioToMyprofile < ActiveRecord::Migration
  def change
    add_column :myprofiles, :nombredenegocio, :string
  end
end
