class Member < ActiveRecord::Base 
    has_many :member_interest_ads 
    has_many :organization_members 
    has_many :interests, through: :member_interest_ads 
    has_many :ads, through: :member_interest_ads 
    has_many :organizations, through: :organization_members 

    # Method to get the members that are in highest number of organizations. 
    def self.highest_number_of_organizations 
        self.maximum(:organization_id) 
    end 
    # Method to get all the members in a hometown queried by users. 
    def self.hometown 
        self.where("home_town = ?") 
    end 
    # Method to get all the members that have the most number of interests. 
    def self.highest_number_of_interests 
        self.maximum(:interest_id) 
    end 
    # Method to get all the members that receive the lowest number of ads. 
    def self.lowest_number_of_ads 
        self.minimum(:ad_id) 
    end 
    # Method to get all the members that have the most number of interests and recieve the lowest number of ads. 
    def self.premium_members 
        self.where(self.highest_number_of_interests && self.lowest_number_of_ads) 
    end 
    # Method to get all the members that continue to live in their hometown. 
    def self.same_town_as_hometown 
        self.where("city = self.hometown") 
    end 
end 