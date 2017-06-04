module PostsHelper

  def has_user?
    Post.user == null;
  end
end
