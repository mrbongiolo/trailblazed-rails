class Comment::Cell::Form < Comment::Cell
  include ActionView::RecordIdentifier
  include ActionView::Helpers::FormOptionsHelper

  def show
    render :form
  end

  private

    property :contract

    def page_title
      return "Edit Comment" if model.model.persisted?
      "New Comment"
    end
end