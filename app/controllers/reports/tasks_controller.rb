class Reports::TasksController < ApplicationController
  before_action :set_reports_task, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @reports_tasks = Reports::Task.all
    respond_with(@reports_tasks)
  end

  def show
    respond_with(@reports_task)
  end

  def new
    @reports_task = Reports::Task.new
    respond_with(@reports_task)
  end

  def edit
  end

  def create
    @reports_task = Reports::Task.new(reports_task_params)
    @reports_task.save
    respond_with(@reports_task)
  end

  def update
    @reports_task.update(reports_task_params)
    respond_with(@reports_task)
  end

  def destroy
    @reports_task.destroy
    respond_with(@reports_task)
  end

  private
    def set_reports_task
      @reports_task = Reports::Task.find(params[:id])
    end

    def reports_task_params
      params[:reports_task]
    end
end
