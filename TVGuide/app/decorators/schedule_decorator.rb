# Decorator for Schedule model
class ScheduleDecorator < Drape::Decorator
  delegate_all

  def show_name
    show.name
  end

  def channel_name
    show.channel.name
  end

  def iso8601_formatted_date
    date.strftime('%Y-%m-%d %H:%M:%S')
  end
end
