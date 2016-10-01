module Api
  module V1
    # Controller for Schecules REST endpoints
    class SchedulesController < APIController
      before_action :set_schedule, only: [:show, :update, :destroy]

      def index
        @schedules = Schedule.all.includes(show: { channel: :category })
        render json: @schedules, each_serializer: ::V1::ScheduleSerializer
      end

      def show
        render json: @schedule, serializer: ::V1::ScheduleSerializer
      end

      def update
      end

      def destroy
      end

      private

      def set_schedule
        @schedule = Schedule.find(params[:id])
      end

      def schedule_params
        params.require(:schedule).permit(:show_id, :date)
      end
    end
  end
end
