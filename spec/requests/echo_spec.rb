require 'rails_helper'

describe 'echo', type: :request do
  it 'shows something on GET request' do
    get(echo_index_path)
    expect(response).to be_success
    expect(response).to render_template('index')
  end

  it 'responds with request data on POST' do
    post(echo_index_path, 'Electric Wizard' => 'Funeralopolis')

    expect(response).to be_success
    expect(response.body).to include 'Electric Wizard'
    expect(response.body).to include 'Funeralopolis'
  end
end
