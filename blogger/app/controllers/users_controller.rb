class UsersController < ApplicationController
  def index
    @posts = Post.all
  end

  def new
    @post = Post.new  
  end

  def show
  end

  def update
  end

  def delete
  end
end
