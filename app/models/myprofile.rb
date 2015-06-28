class Myprofile < ActiveRecord::Base
has_attached_file :fotoperfil, :styles => {:peque =>"50x50>", :mediano =>"400x400>"}
	validates_attachment_content_type :fotoperfil, :content_type => /\Aimage\/.*\Z/

    belongs_to :user

    geocoded_by :address
  after_validation :geocode   
end
