class AddCifToMyprofile < ActiveRecord::Migration
  def change
    add_column :myprofiles, :cif, :string
  end
end
