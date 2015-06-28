class AddPushToGadget < ActiveRecord::Migration
  def change
    add_column :gadgets, :push, :boolean
  end
end
