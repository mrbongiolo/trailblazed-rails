class Comment::Cell < Cell::Concept

  property :author
  property :message

  def show
    render
  end

  private

    property :post
end