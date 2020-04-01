class OrganizationMember < ActiveRecord::Base 
    belongs_to :organization 
    belongs_to :member 
    # Method to get all organization's names.  
    def all_organization_names 
        self.organizations.map(&:name) 
    end 
    # 
end 