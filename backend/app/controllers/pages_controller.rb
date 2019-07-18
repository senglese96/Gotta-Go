class PagesController < Api::BaseController
  skip_before_action :authenticate_user!, only: [:home]

  def home
  end
end