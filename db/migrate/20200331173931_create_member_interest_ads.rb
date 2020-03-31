class CreateMemberInterestAds < ActiveRecord::Migration[5.2]
  def change
    create_table :member_interest_ads do |t| 
      t.integer :member_id 
      t.integer :interest_id
      t.integer :ad_id 
    end  
  end
end
