require 'json'

class PurchasesController < ApplicationController
  def new
      
      require 'json'
      if params[:total]
       purchase=Purchase.new(:total => params[:total], :user_id => 1)
       purchase.save   
      end    
      h = JSON.parse params[:cart] rescue {} 
      h = Array(h)
      cart =[]

      h.each do |item|
        h1=item.to_h
        # update the quantity #>
        item = Item.find(h1["item_id"])
        q=(item.stock-h1["quantity"]).to_i
        item.update(stock: q)
         # ----- 
        @item=Cart.new(:total => h1["total"], :purchase_id =>purchase.purchase_id ,
        :item_id => h1["item_id"],:quantity =>h1["quantity"])
        @item.save    
      end
  end

  def search
  		param=params[:ItemName]
		  @items=Item.where("ItemName like ?", "%#{param}%")
      @item_json=@items.to_json
      # render action: :new
      # redirect_to action: 'new' 
  end

  def list
     
  end
end
