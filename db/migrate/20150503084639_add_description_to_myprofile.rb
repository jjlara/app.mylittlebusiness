class AddDescriptionToMyprofile < ActiveRecord::Migration
  def change
    add_column :myprofiles, :description, :text
  end
end
