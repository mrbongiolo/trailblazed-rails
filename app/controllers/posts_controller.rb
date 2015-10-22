class PostsController < ApplicationController

  def index
    collection Post::Index
  end

  def show
    present Post::Update
  end

  def new
    form Post::Create
  end

  def create
    run Post::Create do |op|
      return redirect_to posts_path
    end

    render :new
  end

  def edit
    form Post::Update
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
end