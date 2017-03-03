class Reports::RankingsController < ReportsController
  before_action :set_report, only: [:show]

  def show
    respond_with(@report)
  end

  def new
    @report = Reports::Ranking.new
    respond_with(@report)
  end

  private

  def set_report
    @report = Reports::Ranking.new.decorate
  end
end
