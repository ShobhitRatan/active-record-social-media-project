class Interest < ActiveRecord::Base 
    has_many :member_interest_ads 
    has_many :members, through: :member_interest_ads 
    has_many :ads, through: :member_interest_ads 
end 