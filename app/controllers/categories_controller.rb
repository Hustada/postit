class CategoriesController < ApplicationController
  def new
    @category = Category.new
  end

  def create
    @category = Category.new(params.require(:category).permit(:name))

    if @category.save
       flash[:notice] = "New category created, YOU DID IT!!!!" 
       redirect_to root_path 
    else
       render :new
    end
  end
end