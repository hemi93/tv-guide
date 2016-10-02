# Controller for html Schedule views
class SchedulesController < ApplicationController
  def index
    @q = Schedule.includes(show: :channel).ransack(params[:q])
    @schedules = @q.result(distinct: true).paginate(page: params[:page], per_page: 20)
  end
end
