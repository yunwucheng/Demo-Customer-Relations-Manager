class Customer < ActiveRecord::Base
   #foreign key
   belongs_to :province
   
	validates :full_name, presence: true
end
