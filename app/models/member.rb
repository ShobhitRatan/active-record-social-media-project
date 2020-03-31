class Member < ActiveRecord::Base 
    has_many :member_interest_ads 
    has_many :organization_members 
    has_many :interests, through: :member_interest_ads 
    has_many :ads, through: :member_interest_ads 
    has_many :organizations, through: :organization_members 
end 