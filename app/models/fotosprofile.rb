class Fotosprofile < ActiveRecord::Base
   has_attached_file :mis_fotos, :styles => {:peque =>"50x50>", :mediano =>"400x400>"}
	validates_attachment_content_type :mis_fotos, :content_type => /\Aimage\/.*\Z/

	belongs_to :user
end
