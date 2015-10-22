class Comment::Cell < Cell::Concept

  property :author
  property :message

  def show
    render
  end

  private

    def post
      model.post
    end
end