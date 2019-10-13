require 'rails_helper'

RSpec.describe PhotosController do
  it 'GET index' do
    get :index

    expect(response.status).to eq(200)
    expect(response).to render_template(:index)
  end

  it 'GET random' do
    get :random

    expect(response.status).to eq(200)
    expect(response).to render_template(:index)
  end

  it 'GET favorites' do
    get :favorites

    expect(response.status).to eq(200)
    expect(response).to render_template(:index)
  end

  it 'GET search' do
    get :search, params: { query: 'colombia' }

    expect(response.status).to eq(200)
    expect(response).to render_template(:index)
  end
 end
