class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|

      t.timestamps 
      t.column "name",:string,:limit => 30
      t.column "email",:string,:limit => 30,:default=>''
      t.column "password",:string,:limit => 30
      
    end
  end
end
