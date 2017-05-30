class UserControllerController < ApplicationController
  def index

  end

  def edit
  end

  def show
    @user = User.find(params[:id])
    @posts = @user.posts
    @posts = @posts.reorder("updated_at DESC").paginate(:page => params[:page], :per_page => 5)

  end

  


end
