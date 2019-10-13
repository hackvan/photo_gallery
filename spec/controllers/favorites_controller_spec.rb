require 'rails_helper'

RSpec.describe FavoritesController do
  it 'GET create' do
    post :create, :format => 'js', params: { photo_id: '123456' }

    expect(response.status).to eq(200)
    expect(response).to render_template(:create)
  end

  it 'GET destroy' do
    delete :destroy, :format => 'js', params: { photo_id: '123456' }

    expect(response.status).to eq(200)
    expect(response).to render_template(:destroy)
  end
 end
