class Post::Cell < Cell::Concept

  property :title
  property :body

  def show
    render
  end

  private

    def post_comments
      model.comments
    end
end