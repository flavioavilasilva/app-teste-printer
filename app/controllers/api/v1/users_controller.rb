class Api::V1::UsersController < ApplicationController
  before_action :authenticate_user!
  
  # GET /api/v1/users
  def index
    @api_v1_users = User.where('lower(name) LIKE lower(?)', "%#{api_v1_user_params[:name]}%")
    
    api_v1_user_params
    render json: @api_v1_users
  end

  private
    def api_v1_user_params
      params.fetch(:api_v1_user).permit(:name)
    end
end
