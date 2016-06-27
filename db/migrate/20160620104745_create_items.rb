class CreateItems < ActiveRecord::Migration
  def change
    create_table :items ,{:id =>false} do |t|

      t.primary_key "item_id" 
      t.column "ItemName" ,:string, :limit =>30
      t.column "Price" ,:integer 
      t.column "stock" ,:integer,:default=>0 
      t.timestamps null: false

    end
  end
end
