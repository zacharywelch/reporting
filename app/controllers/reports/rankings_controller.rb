class Reports::RankingsController < ReportsController
  def show
    @report = Reports::Ranking.new(report_params).decorate
    respond_with(@report)
  end
end
