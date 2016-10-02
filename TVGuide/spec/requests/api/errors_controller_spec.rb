describe ErrorsController do
  describe 'on invalid route' do
    it 'GET displays error JSON' do
      get '/invalid_path'

      expect(response).to match_response_schema('simple_error')
    end

    it 'GET returns 404 status code' do
      get '/invalid_path'

      expect(response).to have_http_status(404)
    end

    it 'PUT displays error JSON' do
      patch '/invalid_path'

      expect(response).to match_response_schema('simple_error')
    end

    it 'PUT returns 404 status code' do
      patch '/invalid_path'

      expect(response).to have_http_status(404)
    end

    it 'DELETE displays error JSON' do
      delete '/invalid_path'

      expect(response).to match_response_schema('simple_error')
    end

    it 'DELETE returns 404 status code' do
      delete '/invalid_path'

      expect(response).to have_http_status(404)
    end

    it 'POST displays error JSON' do
      post '/invalid_path'

      expect(response).to match_response_schema('simple_error')
    end

    it 'POST returns 404 status code' do
      post '/invalid_path'

      expect(response).to have_http_status(404)
    end
  end
end
