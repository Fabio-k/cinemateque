require 'rails_helper'

describe 'user try to view actor details' do
  it 'with success' do
    user = FactoryBot.create(:user, email: 'joao@email.com')
    login_as user

    actor = FactoryBot.create(:actor, name: 'Leonardo')
    movie = FactoryBot.create(:movie)
    actor.movies << movie

    visit actor_path(actor.id)

    expect(page).to have_content 'Leonardo'
    expect(page).to have_content 'The interview'
  end
end