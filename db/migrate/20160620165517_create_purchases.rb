class CreatePurchases < ActiveRecord::Migration
  def change
    create_table :purchases,{:id=>false} do |t|

      t.belongs_to "user" ,:index=>true 
      t.primary_key "purchase_id"
      t.float "total"
      t.timestamps null: false
    end

  end
end
