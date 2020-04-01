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
    # Method to find the organization with the most members. 
    def most_members 
        self.maximum(:member_id) 
    end 
end 