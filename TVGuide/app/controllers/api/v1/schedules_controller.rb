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

      def create
        @schedule = Schedule.new(schedule_params)
        if @schedule.save
          render json: @schedule, serializer: ::V1::ScheduleSerializer
        else
          render json: { errors: @schedule.errors }, status: 400
        end
      end

      def update
        if @schedule.update(schedule_params)
          render json: @schedule, serializer: ::V1::ScheduleSerializer, status: 200
        else
          render json: { errors: @schedule.errors }, status: 400
        end
      end

      def destroy
        if @schedule.destroy
          render json: { message: I18n.t('api.schedules.delete.success') }, status: 204
        else
          render json: { errors: @schedule.errors }, status: 400
        end
      end

      private

      def set_schedule
        @schedule = Schedule.includes(:show).find(params[:id])
      end

      def schedule_params
        params.require(:schedule).permit(:show_id, :date)
      end
    end
  end
end
