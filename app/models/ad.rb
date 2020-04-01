class Ad < ActiveRecord::Base 
    has_many :member_interest_ads 
    has_many :members, through: :member_interest_ads 
    has_many :interests, through: :member_interest_ads 
    # Methods to find the interests corresponding with most ads. 
    def interest_count 
        self.interests.length 
    end 
    def self.most_ads 
        self.maximum(interest_count) 
    end 
    def self.most_popular_interest_by_ad 
        self.where("ad_id = ?", self.most_ads).first 
    end 
    # Methods to find the interests corresponding with most members. 
    def member_count 
        self.members.length 
    end 
    def self.most_members 
        self.maximum(interest_count) 
    end 
    def self.most_popular_interest 
        self.where("member_id = ?", self.most_members).first 
    end 
end 