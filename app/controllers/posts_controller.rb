class PostsController < ApplicationController
  def index
    @posts = Post.all
 end

def show
    @post = Post.find(params[:id])
  end

def new
  @post = Post.new
end

def create
  @post = Post.new(params.require(:post).permit!)
  
  if @post.save
    flash[:notice] = "You've created a post!"
    redirect_to posts_path  
  else
    #handle validations
    render :new
  end  

end

def edit
  @post = Post.find(params[:id])

end

def category
  @category = Category.new
end  

def update
  @post = Post.find(params[:id])

  if @post.update(post_params)
    flash[:notice] = "You updated the post!"
    redirect_to posts_path(@posts)
  else
    render :edit
  end
end  
end