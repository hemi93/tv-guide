module Api
  module V1
    # Controller for Schecules REST endpoints
    class SchedulesController < APIController
      before_action :set_schedule_with_includes, only: [:show]
      before_action :set_schedule, only: [:destroy, :update]

      def index
        @schedules = Schedule.all.includes(show: { channel: :category })
        render json: @schedules, each_serializer: ::V1::ScheduleSerializer
      end

      def show
        render json: @schedule, serializer: ::V1::ScheduleSerializer
      end

      def create
        @schedule = Schedule.new(schedule_params)
        if @schedule.save
          render json: @schedule, serializer: ::V1::ScheduleSerializer, status: :created
        else
          render json: { errors: @schedule.errors }, status: :bad_request
        end
      end

      def update
        if @schedule.update(schedule_params)
          render json: {}, status: :ok
        else
          render json: { errors: @schedule.errors }, status: :bad_request
        end
      end

      def destroy
        if @schedule.destroy
          render json: {}, status: :no_content
        else
          render json: { errors: schedule.errors }, status: :bad_request
        end
      end

      private

      def set_schedule
        @schedule = Schedule.find(params[:id])
      end

      def set_schedule_with_includes
        @schedule = Schedule.includes(:show).find(params[:id])
      end

      def schedule_params
        params.require(:schedule).permit(:show_id, :date)
      end
    end
  end
end
