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
    let(:invalid_schedule_params) { { schedule: { date: nil, show_id: nil } } }

    it 'on success returns HTTP 200 code' do
      post api_v1_schedules_path, params: schedule_params

      expect(response).to have_http_status(200)
    end

    it 'on success returns JSON matching schedule schema' do
      post api_v1_schedules_path, params: schedule_params

      expect(response).to match_response_schema('schedule')
    end

    it 'on fail returns schedule errors JSON' do
      post api_v1_schedules_path, params: invalid_schedule_params

      expect(response).to match_response_schema('schedule_errors')
    end

    it 'on fail returns error code' do
      post api_v1_schedules_path, params: invalid_schedule_params

      expect(response).to have_http_status(400)
    end
  end
end
