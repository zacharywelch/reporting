# == Schema Information
#
# Table name: reports
#
#  id         :integer          not null, primary key
#  type       :string
#  format     :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Report < ActiveRecord::Base
  alias_attribute :report_format, :format

  FORMATS = %w(pdf csv)

  validates :format, inclusion: { in: FORMATS }
end
