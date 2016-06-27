class ItemController < ApplicationController
 
 #addition of stock of items i.e incrementing items' stock
 #also deletion or redution of the items' quantity
 #common update method

  def add
  	@item=Item.find(params[:item_id])
  end

  def delete
  	@item=Item.find(params[:item_id])
  end

  def update
		@item=Item.find(params[:item_id])
		if params[:act]=='add'
			@item.stock=@item.stock+params[:item][:stock].to_i
	
	    elsif params[:act]=='sub'
				@item.stock=@item.stock-params[:item][:stock].to_i
		end
			params[:item][:stock]=@item.stock.to_s
	
		if @item.update_attributes(item_params)
			redirect_to(:action=>'display')	
		end	
  end

#end

#displaying items list
  def display
  	@items= Item.sorted
  end
#end


#creation of items
  def create
  	
  	@item=Item.new(item_params)
  	
  	if @item.save
  		redirect_to(:action=>'display')
  	else
  		render('new')
  	end	
  
  end	
#end

#new method for instatiating and assigning default values
  def new
  	@item=Item.new({:ItemName =>'def'})
  end
#end

#method for accessing strong params in rails
#strong params are used for mass assignment in rails
#for security purposes
  def item_params 
  	params.require(:item).permit(:ItemName,:Price,:stock)
  end	
#end  

end
