class Reports::TasksController < ApplicationController
  before_action :set_task, only: [:show]

  def index
    @tasks = Reports::TaskDecorator.decorate_collection(report_class.all)
    respond_with(@tasks)
  end

  def show
    respond_with(@task)
  end

  def create
    @task = Reports::TaskDecorator.new(report_class.new(task_params))
    @task.save
    respond_with(@task)
  end

  private

  def report_class
    request.path.split('/tasks').first.classify.constantize
  end

  def set_task
    @task = Reports::TaskDecorator.decorate(report_class.find(params[:id]))
  end

  def task_params
    params.require(:task).permit(:format)
  end
end
