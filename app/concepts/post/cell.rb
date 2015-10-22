class Post::Cell < Cell::Concept

  property :title
  property :body

  def show
    render
  end
end