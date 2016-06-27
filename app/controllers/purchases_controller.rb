class PurchasesController < ApplicationController
  def new
  		@param=params[:ItemName]
      @name=params[:name]
      @id=params[:id]          
  end

  def search
  		param=params[:ItemName]
		  @items=Item.where("ItemName like ?", "%#{param}%") 	
  end

  def list
      @ItemName=params[:ItemName]
      # puts @cart[:ItemName]
      @quantity=params[:quantity].to_i
      @id=params[:item_id]
      @item=Item.where({:item_id => @id })
      @total=@item[0].Price * @quantity
  end
end
