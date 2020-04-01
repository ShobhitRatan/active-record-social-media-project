class Organization < ActiveRecord::Base 
    has_many :organization_members 
    has_many :members, through: :organization_members 
    # Method to return members associated with the organization. 
    def member_count 
        self.members.length 
    end 
    # Method to find members by their hometown. 
    def members_by_hometown 
        self.members.where("home_town = ?") 
    end 
    # Methods to find the organization with the most members. 
    def self.most_members 
        self.maximum(member_count) 
    end 
    def self.biggest_organization 
        self.where("member_id = ?", self.most_members).first 
    end 
    # Methods to find the organization with the least members. 
    def self.least_members 
        self.minimum(member_count) 
    end 
    def self.smallest_organization 
        self.where("member_id = ?", self.least_members).first 
    end 
end 