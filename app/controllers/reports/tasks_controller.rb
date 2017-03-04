class Reports::TasksController < ApplicationController
  before_action :set_task, :check_completed, only: [:show]

  def index
    @tasks = taskable.all
    respond_with(@tasks)
  end

  def show
    respond_with(@task)
  end

  def create
    @task = taskable.new(task_params)
    @task.save
    respond_with @task, status: :accepted, template: 'reports/tasks/show'
  end

  private

  def taskable
    request.path.split('/tasks').first.classify.constantize
  end

  def set_task
    @task = taskable.find(params[:id])
  end

  def check_completed
    redirect_to @task.url, status: :see_other if @task.completed?
  end

  def task_params
    params.require(:task).permit(:format)
  end
end
