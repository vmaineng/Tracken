class ApplicationController < ActionController::API
  include ActionController::Cookies
  before_action :authorize 

  rescue_from ActiveRecord::RecordInvalid, with: :render_unprocessable_entity_message

  private

  def render_unprocessable_entity_message(exception)
    render json: { errors: exception.record.errors.full_messages }, status: :unprocessable_entity
  end

  def authorize
    @current_user = User.find_by(id: session[:user_id])
    render json: { errors: ["Not authorized"]}, status: :unauthorized unless @current_user
  end


end
