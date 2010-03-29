class TasksController < ApplicationController
  #before_filter :login_required
  def index
    @tasks = Task.all(:order => 'till')
  end

  def show
    @task = Task.find_by_id(params[:id])
    render :partial => 'show'
  end

  def new
    @task = Task.new
    @categories = Category.all
    render :partial => 'new'
  end

  def create
    task = params[:task]
    @task = Task.new(task)

    @task.save
    @tasks = Task.all
    render :action => 'index', :layout => false
  end

  def edit
    @task = Task.find_by_id(params[:id])
    @categories = Category.all
    render :partial => 'edit'
  end

  def update
    task = params[:task]
    return :text => '' if params[:commit].eql?('Cancel')
    @task = Task.find_by_id(params[:id])
    @task.update_attributes(task)
    @tasks = Task.all
    render :action => 'index', :layout => false
  end

  def destroy
    Task.find_by_id(params[:id]).destroy;
    render :text => "deleted"
  end
end
