class Reports::RankingsController < ReportsController

  def index
    @report = Reports::Ranking.new.decorate
    respond_with(@report)
  end

  def show
    respond_with(@report)
  end

  def new
    @report = Report.new
    respond_with(@report)
  end

  def create
    @report = Report.new(report_params)
    @report.save
    respond_with(@report)
  end
end
