# == Schema Information
#
# Table name: restrooms
#
#  id          :bigint           not null, primary key
#  name        :string           not null
#  lon         :integer          not null
#  lat         :integer          not null
#  description :string
#  address     :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

require 'test_helper'

class RestroomTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
