class PurchasesController < ApplicationController
  def new
  		@param=params[:ItemName]
  end

  def search
  		param=params[:ItemName]
		@items=Item.where("ItemName like ?", "%#{param}%")
    
	
  end

  def list
  end
end
