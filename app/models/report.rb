# == Schema Information
#
# Table name: reports
#
#  id         :integer          not null, primary key
#  type       :string
#  format     :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  state      :string
#

class Report < ActiveRecord::Base
  alias_attribute :report_format, :format

  FORMATS = %w(pdf csv)

  validates :format, inclusion: { in: FORMATS }

  state_machine initial: :waiting do
    event :starting do
      transition waiting: :in_progress
    end
    event :complete do
      transition any => :completed
    end
    event :error do
      transition any => :errored
    end
  end

  def url
    "http://example.com"
  end
end
