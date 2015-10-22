class Post::Delete < Post::Create
  action :find

  def process(params)
    return invalid! unless model.destroy
  end
end