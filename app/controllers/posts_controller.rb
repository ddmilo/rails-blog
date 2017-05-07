class PostsController < ApplicationController
  def index
    @posts = Post.all

  end

  def show
    @post = Post.find_by(params[:id])
  end

  def new
    @post = Post.new
    @confirm = 'Your post was created'
    render :new
  end

  def create
    puts "create"
    puts @post
    post = Post.create(post_params)
    post.save

    redirect_to posts_index_path
  end

  private

  def post_params
    params.require(:post)
      .permit(:title, :content)
       .merge(user_id: current_user.id)

  end
end
