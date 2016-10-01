describe Api::V1::SchedulesController do
  describe 'GET /api/v1/schedules' do
    it 'returns HTTP 200 code' do
      get api_v1_schedules_path, as: :json

      expect(response.status).to eq 200
    end

    it 'returns Schedules matching JSON Schema' do
      get api_v1_schedules_path, as: :json

      expect(response).to match_response_schema('schedules')
    end
  end
end
