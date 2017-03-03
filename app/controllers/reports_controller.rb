class ReportsController < ApplicationController
  respond_to :html, :json, :pdf, :csv

  private

  def report_params
    params.require(:report).permit(:report_format)
  end
end
