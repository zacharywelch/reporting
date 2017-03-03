class Reports::DownloadsController < ApplicationController
  before_action :set_download, only: [:show]

  def show
    redirect_to @download.url
  end

  private

  def report_class
    request.path.split('/downloads').first.classify.constantize
  end

  def set_download
    @download = report_class.find_by!(id: params[:id], state: :completed)
  end
end
