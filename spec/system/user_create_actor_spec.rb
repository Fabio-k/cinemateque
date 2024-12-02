require 'rails_helper'

describe 'user try to create actor' do
  it 'with success' do
    user = FactoryBot.create(:user, email: 'joao@email.com')
    login_as user

    visit root_path
    within('nav') do
      click_on 'Criar ator'
    end

    fill_in 'Nome', with: 'Ator'
    fill_in 'Nacionalidade', with: 'Brasil'
    fill_in 'Data de Nascimento', with: Date.new
    click_on 'Salvar'

    expect(page).to have_content 'Ator'
    expect(page).to have_content 'Brasil'
  end
end