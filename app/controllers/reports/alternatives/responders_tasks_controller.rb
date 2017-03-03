class Reports::TasksController < ApplicationController
  before_action :set_task, only: [:show]

  def index
    @tasks = taskable.all
    respond_with @tasks#, template: 'reports/tasks/index'
  end

  def show
    respond_with @task, template: 'reports/tasks/show'
  end

  def create
    @task = taskable.new(task_params)
    @task.save
    respond_with @task, template: 'reports/tasks/show'
  end

  private

  def taskable
    request.path.split('/tasks').first.classify.constantize
  end

  def set_task
    @task = taskable.find(params[:id])
  end

  def task_params
    params.require(:task).permit(:format)
  end
end
