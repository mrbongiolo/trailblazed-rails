class PostsController < ApplicationController

  def index
    collection Post::Index
  end

  def show
    present Post::Update

    render text: concept("post/cell", @model), layout: true
  end

  def new
    form Post::Create

    render_form
  end

  def create
    run Post::Create do |op|
      return redirect_to posts_path
    end

    render :new
  end

  def edit
    form Post::Update

    render_form
  end

  def update
    run Post::Update do |op|
      return redirect_to posts_path
    end

    render :edit
  end

  def destroy
    run Post::Delete
    redirect_to posts_path
  end

  private

    def render_form
      render text: concept("post/cell/form", @operation), layout: true
    end
end