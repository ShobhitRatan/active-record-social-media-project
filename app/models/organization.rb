class Organization < ActiveRecord::Base 
    has_many :organization_members 
    has_many :members, through: :organization_members 
end 