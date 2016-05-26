class CommentsController < ApplicationController
	def create
		@post = post.find([:params_id])
		@comment = @post.comments.create(params[:comment].permit(:name, :body))

		redirect_to post_path(@post)
	end

	def destroy
		@post = Post.find(params[:post_id])
		@comment = @post.comments.find(params[:id])
		@comment.destroy

		redirect_to_post_path(@post)
		
	end
		
	end
end
