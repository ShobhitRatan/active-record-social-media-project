class CreateAds < ActiveRecord::Migration[5.2]
  def change
    create_table :ads do |t| 
      t.string :name 
      t.string :description 
    end 
  end
end
