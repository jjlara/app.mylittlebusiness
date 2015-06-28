class AddLatitudeToMyprofile < ActiveRecord::Migration
  def change
    add_column :myprofiles, :latitude, :float
  end
end
