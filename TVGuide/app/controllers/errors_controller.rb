# Controller for catching global errors in application
class ErrorsController < ApplicationController
  protect_from_forgery with: :null_session

  def not_found
    raise ActionController::RoutingError, params[:path]
  end
end
