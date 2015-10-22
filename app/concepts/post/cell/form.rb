class Post::Cell::Form < Post::Cell
  include ActionView::RecordIdentifier
  include ActionView::Helpers::FormOptionsHelper

  def show
    render :form
  end

  private

    def action_url
      options[:url]
    end
end