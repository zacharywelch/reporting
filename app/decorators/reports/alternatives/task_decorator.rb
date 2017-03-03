class Reports::TaskDecorator < Draper::Decorator
  decorates :report

  delegate :id, :format, :save, :errors, :persisted?, :completed?

  def status
    object.state
  end

  def download_url
    h.send("#{object.model_name.singular}_download_url", report) if completed?
  end

  def model_name
    ActiveModel::Name.new(object, nil, "#{object.class}::Task")
  end
end
