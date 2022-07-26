# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'Home', type: :request do
  before { get '/' }

  it 'returns 200' do
    expect(response).to have_http_status(:ok)
  end
end
