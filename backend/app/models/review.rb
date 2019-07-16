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

class Review < ApplicationRecord
    validates :access, :quality, presence: true

    belongs_to(
        :user,
        foreign_key: :user_id,
        class_name: 'User'
    )

    belongs_to(
        :restroom,
        foreign_key: :restroom_id,
        class_name: 'Restroom'
    )
end
