class AddLongitudeToMyprofile < ActiveRecord::Migration
  def change
    add_column :myprofiles, :longitude, :float
  end
end
