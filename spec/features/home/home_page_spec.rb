# frozen_string_literal: true

require 'rails_helper'
require 'support/factory_girl'
require 'support/devise'
require 'support/i18n'

RSpec.shared_examples 'home page' do
  background do
    create_list(:book, 5, :with_cover)
    allow(Book).to receive(:best_seller).and_return(Book.first)
    visit home_index_path
  end

  scenario 'shows Latest books block' do
    expect(page).to have_css('#slider.carousel.slide')
  end

  scenario 'shows Get started bock' do
    expect(page).to have_text(t('home.index.welcome'))
    expect(page).to have_button(t('home.index.get_started'))
  end

  scenario 'shows Best sellers block' do
    expect(page).to have_text(t('home.index.best_sellers'))
  end
end

RSpec.feature 'Home page' do
  context 'when user is a guest' do
    it_behaves_like 'home page'
  end

  context 'when user is logged in' do
    let(:user) { create(:user) }

    background { sign_in user }
    it_behaves_like 'home page'
  end
end
