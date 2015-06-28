class AddChatToGadget < ActiveRecord::Migration
  def change
    add_column :gadgets, :chat, :boolean
  end
end
