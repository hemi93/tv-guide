# Base class for non-api controllers in application
class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  rescue_from ActionController::InvalidAuthenticityToken, with: :handle_invalid_authenticity_token
  rescue_from ActionController::RoutingError, with: :handle_not_found

  private

  def handle_invalid_authenticity_token
    render json: { errors: [message: 'InvalidAuthenticityToken'] }, status: :unauthorized
  end

  def handle_not_found
    render json: { errors: [message: 'Not Found'] }, status: :not_found
  end
end
