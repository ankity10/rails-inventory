class PurchasesController < ApplicationController
  def new
  		@param=params[:ItemName]
      @name=params[:name]
      @id=params[:id]
      if !@id
        @id=0
      end  
      @Price=params[:Price].to_i
      @stock=params[:stock].to_i          
  end

  def search
  		param=params[:ItemName]
		  @items=Item.where("ItemName like ?", "%#{param}%") 	
      # @item_json=@items.to_json
      # render action: :new
      # redirect_to action: 'new' 
  end

  def search1 


  end 
  def list
      @ItemName=params[:ItemName]
      @quantity=params[:quantity].to_i
      @id=params[:item_id]
      @item=Item.where({:item_id => @id })
      @total=@item[0].Price * @quantity
  end
end
