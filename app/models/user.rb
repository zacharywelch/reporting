# == Schema Information
#
# Table name: users
#
#  id         :integer          not null, primary key
#  name       :string
#  email      :string
#  rank       :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class User < ActiveRecord::Base
  scope :ranked, -> { order(:rank) }
  scope :top, ->(n) { ranked.limit(n) }
end
