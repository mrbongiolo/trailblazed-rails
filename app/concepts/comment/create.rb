class Comment::Create < Trailblazer::Operation

  attr_reader :post

  contract do

    # this is needed because we didn't use include Model on this Operation
    model Comment

    property :author, validates: { presence: true }
    property :message, validates: { presence: true }
  end

  def process(params)
    validate(params[:comment], model) do
      contract.save
    end
  end

  private

    def model!(params)
      @post = Post.find(params[:post_id])
      @post.comments.new
    end
end