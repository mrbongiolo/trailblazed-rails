class Post::Index < Trailblazer::Operation
  include Collection

  def model!(params)
    Post.all
  end
end