class Transaction < ActiveRecord::Base
	has_many :users

	validates :tax_receipt, presence: true
  
end

