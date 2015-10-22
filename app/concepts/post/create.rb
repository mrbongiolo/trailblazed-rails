class Post::Create < Trailblazer::Operation
  include Model

  model Post, :create

  contract do
    property :title, validates: { presence: true }
    property :body, validates: { presence: true }
  end

  def process(params)
    validate(params[:post]) do
      contract.save
    end
  end
end