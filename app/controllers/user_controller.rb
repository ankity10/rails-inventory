class UserController < ApplicationController
  
  #method for authentication regarding user login
  def login
  	@user_info=User.new({:email =>'siteflu@edc.com'})		
  end

  def login_check
	
	#extracting user hash from database using where function
  	#note that where returns array of objects
  	#therefore,@user_info[0] i.e. first element 
  	
  	@user_info=User.where({ :email => params[:user][:email] })
	   p=params[:user]
  	if @user_info[0].email == p[:email] && @user_info[0].password==p[:password]
  		redirect_to({:controller=>'item', :action => 'display'})
  	else
  		render('login')
  	end

  end 

  def user_params
  	params.require(:user).permit(:email,:password)
  end



end
