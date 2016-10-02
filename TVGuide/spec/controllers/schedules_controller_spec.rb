require 'rails_helper'

describe SchedulesController do
  it 'renders the index template' do
    get :index
    expect(response).to render_template('index')
  end
end
