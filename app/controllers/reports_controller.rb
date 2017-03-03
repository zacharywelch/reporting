class ReportsController < ApplicationController
  respond_to :html, :json, :pdf, :csv

  private

  def report_params
    params.permit(:report_format)
  end
end
