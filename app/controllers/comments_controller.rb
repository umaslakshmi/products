class CommentsController < ApplicationController
	def index
		@comments = Comment.joins(:product)
		# render json: @comments
	end

	def create
		# fail
		@comment = Comment.new(comment: params[:comment], product: Product.find(params[:product_id]))
		@comment.save
		redirect_to '/products'
	end

end
