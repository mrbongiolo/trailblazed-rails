class Comment::Update < Comment::Create

  private

    def model!(params)
      @post = Post.find(params[:post_id])
      @post.comments.find(params[:id])
    end
end