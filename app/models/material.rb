class Material < ActiveRecord::Base
	belongs_to :Transaction

	validates :name, presence: true
	
end

