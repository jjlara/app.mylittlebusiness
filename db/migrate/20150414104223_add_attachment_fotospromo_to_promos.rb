class AddAttachmentFotospromoToPromos < ActiveRecord::Migration
  def self.up
    change_table :promos do |t|
      t.attachment :fotospromo
    end
  end

  def self.down
    remove_attachment :promos, :fotospromo
  end
end
