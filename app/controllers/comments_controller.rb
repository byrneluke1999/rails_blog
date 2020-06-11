class CommentsController < ApplicationController

    def create
        @post = Post.find(params[:post_id])
        #creates a new comment on that post
        @comment = @post.comments.create(params[:comment].permit(:name, :comment))
        redirect_to post_path(@post)
    end

    def destroy
        @post = Post.find(params[:post_id])
        @comment = @post.comments.find(params[:id])
        @comment.destroy
        redirect_to post_path(@post)
    end
end
