class OrganizationMember < ActiveRecord::Base 
    belongs_to :organization 
    belongs_to :member 
    # Method to get all organization names.  
    def all_organization_names 
        self.organizations.map(&:name) 
    end 
    # Method to get all member names. 
    def all_member_names 
        self.members.map(&:name) 
    end 
    # Method to get the organization name of first member. 
    def get_organization_of_first_member 
        self.members.first.organization 
    end 
end 