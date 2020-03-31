class CreateMembers < ActiveRecord::Migration[5.2]
  def change
    create_table :members do |t| 
      t.string :last_name 
      t.string :first_name 
      t.string :address 
      t.string :city 
      t.string :state 
      t.string :zip_code 
      t.string :country 
      t.string :home_town 
      t.string :gender 
      t.datetime :date_of_birth 
      t.string :race_ethnicity 
      t.string :phone_number 
      t.string :email_address 
    end 
  end
end
