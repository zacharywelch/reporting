class Reports::RankingDecorator < ReportDecorator
  delegate_all

  def users
    User.top(5)
  end
end
