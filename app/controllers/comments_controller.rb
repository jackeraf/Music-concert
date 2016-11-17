class CommentsController < ApplicationController

	def index
		@concert = Concert.find params[:concert_id]
		@comments = @concert.comments
	end

	def new 
		# byebug
		@concert = Concert.find params[:concert_id]
		@comment = @concert.comments.new

	end


	def create
		@concert = Concert.find params[:concert_id]
		@comment = @concert.comments.new comment_params

		if @comment.save
			flash[:notice] = "Comment created sucesfully"
			# redirect_to concert_comments_path(@concert)
			redirect_to "concerts/#{@concert.id}"
			# redirect_to concert_path(@comment)

		else
			flash.now[:alert] = "Problem with the comment"
			@errors = @comment.errors.full_messages
			render 'new'
		end
	end



	private
	
	def comment_params
		 params.require(:comment).permit(:user_name, :comment)
	end



end
