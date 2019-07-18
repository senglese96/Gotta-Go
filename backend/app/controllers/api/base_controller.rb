class Api::BaseController < ApplicationController
    respond_to :json
    include DeviseTokenAuth::Concerns::SetUserByToken
    
    protect_from_forgery with: :null_session, only: Proc.new { |c| c.request.format.json? }  
    before_action :authenticate_user!  
end
