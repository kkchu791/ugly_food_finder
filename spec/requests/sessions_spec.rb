require 'rails_helper'

describe "sessions", type: :request do
  let(:user) { FactoryGirl.create(:user) }
  let(:params) { { email: user.email, password: user.password } }

  it "should render the log_in page" do
    get '/log_in'
    expect(response.code).to eq("200")
  end

  it "should create a session" do
    post '/log_in', params
    expect(response.code).to eq("302")
    expect(response).to redirect_to(markets_path)
    expect(session[:user_id]).to_not be_nil
  end

  it "should fail to authenticate" do
    post '/log_in', { email: "", password: "" }
    expect(response).to render_template('new')
  end

  it "should end a session" do
    get '/log_out'
    expect(response).to redirect_to(root_path)
    expect(session[:user_id]).to be_nil
  end
end