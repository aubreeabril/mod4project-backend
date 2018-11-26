require 'rails_helper'

Rspec.describe Api::RecipesController do
  describe "GET #index" do
    before do
      get :index
  end

  it "returns http success" do
    expect(response).to have_http_status(:success)
  end

end
