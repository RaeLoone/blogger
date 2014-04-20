class PostsController < ApplicationController
  def index
  	@posts = Post.all

  end

  def new
  	@post = Post.new
  end

  def show
  	@post = Post.find(params[:id])
  end

  def create
  	@post_params = params.require(:post).permit(:title, :description, :image, :user_id)
  	@post = Post.new(@post_params)
  	if @post.save 
  			redirect_to @post, :notice => "Your post entry is successfully saved!"
  	else
  		render action: 'new'
  	end
  end

  def update
  end

  def delete
  end
end
