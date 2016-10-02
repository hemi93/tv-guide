# Controller for html Schedule views
class SchedulesController < ApplicationController
  def index
    @query = Schedule.includes(show: :channel).ransack(params[:q])
    @schedules = @query.result(distinct: true).paginate(page: params[:page], per_page: 20)
  end
end
