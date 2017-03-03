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

FactoryGirl.define do
  factory :report do
    type ""
    format "MyString"
  end
end
