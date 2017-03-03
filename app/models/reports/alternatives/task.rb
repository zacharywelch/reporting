class Reports::Task
  extend ActiveModel::Naming

  attr_reader :report

  def initialize(report)
    @report = report
  end

  def id
    report.id
  end

  def status
    report.state
  end

  def save
    report.save
  end

  def model_name
    ActiveModel::Name.new(self, nil, "#{report.class}::Task")
  end
end
