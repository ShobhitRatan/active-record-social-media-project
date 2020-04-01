class Interest < ActiveRecord::Base 
    has_many :member_interest_ads 
    has_many :members, through: :member_interest_ads 
    has_many :ads, through: :member_interest_ads 
    # Methods to find the interest corresponding with the most ads. 
    def ad_count 
        self.ads.length 
    end 
    def self.most_ads 
        self.maximum(ad_count) 
    end 
    def self.most_popular_interest_by_ad 
        self.where("ad_id = ?", self.most_ads).first 
    end 
     
end 