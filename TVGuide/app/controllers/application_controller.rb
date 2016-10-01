# Base class for non-api controllers in application
class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
end
