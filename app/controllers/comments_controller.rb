class CommentsController < ApplicationController

  def new
    form Comment::Create

    render_form
  end

  def create
    run Comment::Create do |op|
      return redirect_to post_path(op.model.post)
    end

    render :new
  end

  def edit
    form Comment::Update

    render_form
  end

  def update
    run Comment::Update do |op|
      return redirect_to post_path(op.model.post)
    end

    render :edit
  end

  def destroy
    run Comment::Delete
    redirect_to post_path(@model.post)
  end

  private

    def render_form
      render text: concept("comment/cell/form", @operation), layout: true
    end
end