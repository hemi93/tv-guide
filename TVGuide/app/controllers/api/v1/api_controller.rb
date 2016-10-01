module Api
  module V1
    # Base for V1 Api controllers
    class APIController < ActionController::API
      rescue_from ActiveRecord::RecordNotFound, with: :record_not_found

      private

      def record_not_found
        render json: { message: I18n.t('api.errors.not_found') }, status: :not_found
      end
    end
  end
end
