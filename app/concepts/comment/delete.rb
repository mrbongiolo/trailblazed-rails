class Comment::Delete < Comment::Update

  def process(params)
    return invalid! unless model.destroy
  end
end