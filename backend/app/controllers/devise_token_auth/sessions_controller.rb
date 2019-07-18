class Api::V1::DeviseTokenAuth::SessionsController < ::DeviseTokenAuth::SessionsController
  protect_from_forgery with: :null_session, only: Proc.new { |c| c.request.format.json? }
  # Disable the authenticate user for user can sign in and validate token
  before_action :authenticate_user!, except: [:new, :create, :validate_token]
  
  wrap_parameters format: []
end
