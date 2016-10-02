# Base class for non-api controllers in application
class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  rescue_from ActionController::RoutingError, with: :handle_routing_error

  private

  def handle_routing_error
    render json: { errors: [message: 'Path Not Found'] }, status: :not_found
  end
end
