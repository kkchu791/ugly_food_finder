require 'rails_helper'

describe "markets", type: :request do
  let!(:market) { FactoryGirl.create(:market) }
  describe 'reading markets' do
    it "should render markets index template" do
      get '/markets'
      expect(response).to have_http_status(200)
      expect(response).to render_template('index')
    end
  end

  describe 'GET /markets/new' do
    it "should render markets new template" do
      get '/markets/new'
      expect(response).to have_http_status(200)
      expect(response).to render_template('new')
    end
  end

  describe 'POST /markets' do
    it "should create a new market" do
      expect {
        post '/markets', market: { store: market.store,
                                  address: market.address,
                                  description: market.description,
                                  delivery: market.delivery }
      }.to change(Market, :count).by(1)
      expect(response).to have_http_status(302)
      expect(response).to redirect_to(market_url(Market.last.id))
    end
  end

  describe 'GET /markets/:id' do
    before do
      post '/markets', market: { store: market.store,
                                address: market.address,
                                description: market.description,
                                delivery: market.delivery }
    end

    it "should render market show template" do
      get "/markets/#{Market.last.id}"
      expect(response).to have_http_status(200)
      expect(response).to render_template('show')
    end
  end

  describe 'DELETE' do
    before do
      post '/markets', market: { store: market.store,
                                address: market.address,
                                description: market.description,
                                delivery: market.delivery }
    end

    it "should delete a market" do
      expect {
        delete "/markets/#{Market.last.id}"
      }.to change(Market, :count).by(-1)
      expect(response).to have_http_status(302)
    end
  end
end
