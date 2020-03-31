class MemberInterestAd < ActiveRecord::Base 
    belongs_to :member 
    belongs_to :interest 
    belongs_to :ad 
end 