class CreateCarts < ActiveRecord::Migration
  def change
    create_table :carts,{:id => false} do |t|
	  t.belongs_to "purchase" ,:index=>true 
      t.belongs_to "item" , :index=>true
      t.float "quantity"
      t.timestamps null: false
    end
  end
end
