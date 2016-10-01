describe Api::V1::SchedulesController do
  describe 'GET /api/v1/schedules' do
    it 'returns HTTP 200 code' do
      get api_v1_schedules_path

      expect(response).to have_http_status(200)
    end

    it 'returns Schedules matching JSON Schema' do
      get api_v1_schedules_path

      expect(response).to match_response_schema('schedules')
    end
  end

  describe 'POST /api/v1/schedules' do
    let(:show) { create(:show) }
    let(:random_airing_date) { Faker::Date.between(Date.today, 5.weeks.from_now) }
    let(:schedule_params) { { schedule: { date: random_airing_date, show_id: show.id } } }
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

  describe 'PUT /api/v1/schedules/:id' do
    let(:schedule) { create(:schedule) }
    let(:random_airing_date) { Faker::Date.between(Date.today, 5.weeks.from_now) }
    let(:invalid_schedule_id) { 0 }

    it 'on success returns HTTP 200 code' do
      put api_v1_schedule_path(schedule), params: { schedule: { date: random_airing_date } }

      expect(response).to have_http_status(200)
    end

    it 'on success returns JSON matching schedule schema' do
      put api_v1_schedule_path(schedule), params: { schedule: { date: random_airing_date } }

      expect(response).to match_response_schema('schedule')
    end

    it 'returns 404 status code if schedule was not found' do
      put api_v1_schedule_path(id: invalid_schedule_id), params: { schedule: { date: random_airing_date } }

      expect(response).to have_http_status(404)
    end
  end

  describe 'GET api/v1/schedules/:id' do
    let(:schedule) { create(:schedule) }
    let(:invalid_schedule_id) { 0 }

    it 'on success returns HTTP 200 code' do
      get api_v1_schedule_path(schedule)

      expect(response).to have_http_status(200)
    end

    it 'on success returns JSON matching schedule schema' do
      get api_v1_schedule_path(schedule)

      expect(response).to match_response_schema('schedule')
    end

    it 'returns 404 status code if schedule was not found' do
      get api_v1_schedule_path(id: invalid_schedule_id)

      expect(response).to have_http_status(404)
    end
  end
end
