require 'rails_helper'

describe 'GET api/V1/detalher-cinema', type: :request do
  it 'return status ok' do
    movie_theater = FactoryBot.create(:movie_theater, name: 'Cine Paradiso')
    
    get api_v1_movie_details_path

    expect(response).to have_http_status :ok
  end
end