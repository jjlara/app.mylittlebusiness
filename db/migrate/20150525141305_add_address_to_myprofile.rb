class AddAddressToMyprofile < ActiveRecord::Migration
  def change
    add_column :myprofiles, :address, :string
  end
end
