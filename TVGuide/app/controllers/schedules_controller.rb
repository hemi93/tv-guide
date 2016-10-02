class SchedulesController < ApplicationController
  def index
    @q = Schedule.ransack(params[:q])
    @schedules = @q.result(distinct: true)
  end
end
