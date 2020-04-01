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
    # Me
end 