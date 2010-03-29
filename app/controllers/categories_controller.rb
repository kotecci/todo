class CategoriesController < ApplicationController
  def index
    @categories = Category.all
  end

  def new
    @category = Category.new
  end

  def create
    @category = Category.new(:name => params[:category][:name])
    @category.save
    redirect_to :action => 'index'
  end

  def destroy
    Category.find_by_id(params[:id]).destroy;
    render :text => "deleted"
  end

  
end
