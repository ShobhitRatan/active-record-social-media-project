class CreateOrganizationMembers < ActiveRecord::Migration[5.2]
  def change 
    create_table :organization_members do |t| 
      t.integer :organization_id 
      t.integer :member_id 
      t.boolean :is_admin? 
    end 
  end
end
