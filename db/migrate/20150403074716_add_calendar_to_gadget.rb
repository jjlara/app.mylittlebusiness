class AddCalendarToGadget < ActiveRecord::Migration
  def change
    add_column :gadgets, :calendar, :boolean
  end
end
