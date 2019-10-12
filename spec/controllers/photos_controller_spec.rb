require 'rails_helper'

RSpec.describe PhotosController do
  it 'GET index' do
    get :index

    expect(response.status).to eq(200)
    expect(response).to render_template(:index)
  end
end
