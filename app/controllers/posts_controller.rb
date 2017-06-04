class PostsController < ApplicationController
  def index
    @post = Post.find_by(params[:user_id])
    @posts = Post.all
    @posts = @posts.reorder("updated_at DESC").paginate(:page => params[:page], :per_page => 5)


  end

  def show

    @post = Post.find(params[:id])
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

    redirect_to posts_path
  end

  private



  def post_params
    params.require(:post)
      .permit(:title, :content)
       .merge(user_id: current_user.id)

  end
end
