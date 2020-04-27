class Morning < ApplicationRecord
	has_many :foots
	accepts_nested_attributes_for :foots  
end
