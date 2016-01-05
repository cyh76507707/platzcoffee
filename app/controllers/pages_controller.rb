class PagesController < ApplicationController
	def home
	end

	def blog
		@posts = Post.all.order(id: :desc).page params[:page]
	end
end
