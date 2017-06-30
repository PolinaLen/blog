class UsersController < ApplicationController
  
  before_action :set_user, only: [:show,:edit,:update]
  
  def index
      # @user = currently
  end
  
  def new
    @user = User.new
  end
  def create
      #render plain: params[:user].inspect 
        @user = User.new(user_params)
        if @user.save
          flash[:notice] = "user created"
          redirect_to articles_path
        else 
          render "new"
        end
  end

  def show
    
  end
  
  def edit
   
  end
  
  def update
   
    if @user.update(user_params)
      flash[:notice] = "user information updated"
      redirect_to article_path
    else
      render "edit"
    end
  end 
  
  
  
  private
  def user_params    
    params.require(:user).permit(:username, :email)
  end 
  
  def set_user
    @user= User.find(params[:id])
  end
end
