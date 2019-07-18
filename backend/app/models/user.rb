# == Schema Information
#
# Table name: users
#
#  id              :bigint           not null, primary key
#  username        :string           not null
#  email           :string           not null
#  password_digest :string
#  session_token   :string
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

class User < ApplicationRecord
            # Include default devise modules.
    include DeviseTokenAuth::Concerns::User
    extend Devise::Models
    devise :database_authenticatable, :registerable,
            :recoverable, :rememberable, :trackable, :validatable,
            :confirmable, :omniauthable
end
