class Reports::DownloadsController < ApplicationController
  before_action :set_download, only: [:show]

  respond_to :html

  def index
    @downloads = Reports::Download.all
    respond_with(@downloads)
  end

  def show
    respond_with(@download)
  end

  private

  def set_download
    @download = Reports::Download.find(params[:id])
  end
end
