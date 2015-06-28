class AddTelfToMyprofile < ActiveRecord::Migration
  def change
    add_column :myprofiles, :telf, :string
  end
end
