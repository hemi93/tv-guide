describe ScheduleDecorator do
  let(:schedule) { create(:schedule) }
  let(:decorated_schedule) { schedule.decorate }
  let(:iso8601_format) { '%Y-%m-%d %H:%M:%S' }

  it '#show_name returns show name' do
    expect(decorated_schedule.show_name).to eq schedule.show.name
  end

  it '#channel_name returns show channel name' do
    expect(decorated_schedule.channel_name).to eq schedule.show.channel.name
  end

  it '#iso8601_formatted_date returns show channel name' do
    expect(decorated_schedule.iso8601_formatted_date).to eq schedule.date.strftime(iso8601_format)
  end
end
