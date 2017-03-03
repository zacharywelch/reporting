class Reports::DownloadsController < ApplicationController
  before_action :set_reports_download, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @reports_downloads = Reports::Download.all
    respond_with(@reports_downloads)
  end

  def show
    respond_with(@reports_download)
  end

  def new
    @reports_download = Reports::Download.new
    respond_with(@reports_download)
  end

  def edit
  end

  def create
    @reports_download = Reports::Download.new(reports_download_params)
    @reports_download.save
    respond_with(@reports_download)
  end

  def update
    @reports_download.update(reports_download_params)
    respond_with(@reports_download)
  end

  def destroy
    @reports_download.destroy
    respond_with(@reports_download)
  end

  private
    def set_reports_download
      @reports_download = Reports::Download.find(params[:id])
    end

    def reports_download_params
      params[:reports_download]
    end
end
