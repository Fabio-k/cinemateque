require 'rails_helper'

describe 'GET api/V1/detalher-cinema' do
  it 'with success' do
    movie_theater = FactoryBot.create(:movie_theater, name: 'Cine Paradiso')
    expect(movie_theater.rooms.empty?).to eq false
  end
end