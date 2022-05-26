# frozen_string_literal: true

class PostController < ApplicationController
  def index
    @post = Post.all
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)

    if @post.save
      redirect_to resumes_read_path
    else
      render 'new'
    end
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    redirect_to leaks_path, notice: 'Обьявление удалено'
  end

  private

  def post_params
    params.require(:post).permit(:title, :content, :worker)
  end
end
