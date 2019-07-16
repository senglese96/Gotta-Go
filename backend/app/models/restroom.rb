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

class Restroom < ApplicationRecord
    validates :lon, :lat, :name, presence: true

    has_many(
        :reviews,
        foreign_key: :restroom_id,
        class_name: 'Review'
    )
end
