class PostsController < ApplicationController

	before_filter :authenticate, :except => [:index]

	def index
		@posts = Post.all
	end

	def new
	end

	def create
  		@post = Post.new(post_params)
  		@post.save
  		redirect_to '/posts'
	end

	private

	def post_params
		params.require(:post).permit(:title, :content)
	end

end
