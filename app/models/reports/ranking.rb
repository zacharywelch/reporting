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

class Reports::Ranking < Report
end
