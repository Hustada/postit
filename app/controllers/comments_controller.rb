class CommentsController < ApplicationController
  def create
    @post = Post.find(params[:post_id])
    @comment = Comment.new(params.require(:comment).permit(:body))
    @comment.post = @post

   if @comment.save
    flash[:notice] = "Your comment has been posted!"
    redirect_to post_path(@post)  
  else
    #handle validations
    render 'posts/show'
    end
  end  
end