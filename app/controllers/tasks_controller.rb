class TasksController < ApplicationController
  def index
    @tasks = Task.all
    #render form
  end

  def new

  end

  def create
    @task = Task.create(task_params)
  end

  def destroy
    @task = Task.find(params[:id])
    @task.destroy
  end

  private
  def task_params
    params.require(:task).permit(:description, :completed)
  end
end
