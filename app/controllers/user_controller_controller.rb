class UserControllerController < ApplicationController
  def index
  end

  def edit
  end

  def show
    # @user = current_user
    @user = User.find_by(params[:id])
    @posts = @user.posts
    @posts = @posts.reorder("updated_at DESC").paginate(:page => params[:page], :per_page => 5)

  end
end
