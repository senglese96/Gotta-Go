# == Schema Information
#
# Table name: reviews
#
#  id          :bigint           not null, primary key
#  restroom_id :integer          not null
#  user_id     :integer          not null
#  access      :integer          not null
#  quality     :integer          not null
#  notes       :string
#  directions  :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

require 'test_helper'

class ReviewTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
