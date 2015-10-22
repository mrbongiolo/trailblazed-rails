class Post::Cell < Cell::Concept

  property :title
  property :body

  def show
    render
  end

  def list
    render :list
  end

  def form
    concept("post/cell/form", model)
  end
end