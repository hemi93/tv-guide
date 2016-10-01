describe Api::V1::SchedulesController do
  describe 'GET /api/v1/schedules' do
    it 'returns HTTP 200 code' do
      get api_v1_schedules_path, as: :json

      expect(response).to have_http_status(200)
    end

    it 'returns Schedules matching JSON Schema' do
      get api_v1_schedules_path, as: :json

      expect(response).to match_response_schema('schedules')
    end
  end

  describe 'POST /api/v1/schedules' do
    let(:show) { create(:show) }
    let(:airing_date) { Faker::Date.between(Date.today, 5.weeks.from_now) }
    let(:schedule_params) { { schedule: { date: airing_date, show_id: show.id } } }

    it 'returns HTTP 200 code if creating schedule was successful' do
      post api_v1_schedules_path, params: schedule_params

      expect(response).to have_http_status(200)
    end

    it 'returns JSON matching schedule schema if creating schedule was successful' do
      post api_v1_schedules_path, params: schedule_params

      expect(response).to match_response_schema('schedule')
    end
  end
end
