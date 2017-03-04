class Reports::DownloadsController < ApplicationController
  before_action :set_download, only: [:show]

  def show
    redirect_to @download.url
  end

  private

  def downloadable
    request.path.split('/downloads').first.classify.constantize
  end

  def set_download
    @download = downloadable.find_by!(id: params[:id], state: :completed)
  end
end
