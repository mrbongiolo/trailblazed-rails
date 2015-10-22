class Post::Cell::Form < Post::Cell
  include ActionView::RecordIdentifier
  include ActionView::Helpers::FormOptionsHelper

  def show
    render :form
  end

  private

    property :contract

    def page_title
      return "Edit Post" if model.model.persisted?
      "New Post"
    end
end