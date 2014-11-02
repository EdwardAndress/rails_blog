class PostsController < ApplicationController

	http_basic_authenticate_with name: 'eddieandress', password: '12345678', except: [:index]

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
