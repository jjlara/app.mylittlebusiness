class Promo < ActiveRecord::Base
	has_attached_file :fotospromo, :styles => {:peque =>"50x50>", :mediano =>"400x400>"}
	validates_attachment_content_type :fotospromo, :content_type => /\Aimage\/.*\Z/
   

	belongs_to :user
end
