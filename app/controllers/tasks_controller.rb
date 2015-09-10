class TasksController < ApplicationController
  def index
    @task = Task.new
    @tasks = Task.all
    #render form
  end

  def new

  end

  def update

  end

  def create
    @task = Task.new(task_params)
      if @task.save
        redirect_to root_path
      else
        "no"
      end
  end

  def destroy
    @task = Task.find(params[:id])
    @task.destroy
    redirect_to root_path
  end

  private
  def task_params
    params.require(:task).permit(:description, :completed)
  end
end
