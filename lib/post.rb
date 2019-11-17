class Post
  attr_accessor :title, :author
  def initiative(title)
    @title = title
  end

  def author(post)
    @post = post
    @post = Post.new(params[:post])
    @post.username = current_user.username
    @post.user_id = current_user.id
      if @post.save
        redirect_to action: "index"
        @posts = Post.find(:all)
      else
        render action: 'new'
      end
    end
  end
end
