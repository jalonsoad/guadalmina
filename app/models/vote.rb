class Vote < ApplicationRecord

	validates :first_name, presence: true
	validates :last_name, presence: true
	validates :cif, presence: true, uniqueness: true
	validates :member, presence: true, uniqueness: true



 def full_name
     first_name + ' ' + last_name 
  end
 



end
