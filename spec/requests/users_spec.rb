require 'rails_helper'

describe "user", type: :request do

  let!(:user) { FactoryGirl.build(:user) }
  let(:params) {{ user: { email: user.email,
    password: user.password, password_confirmation: user.password} } }

  it "should render the sign up page" do
    get '/sign_up'
    expect(response.code).to eq("200")
  end

  it "should create a user" do
    post '/users', params
    expect(response.code).to eq("302")
    expect(response).to redirect_to(markets_path)
    user_email = params[:user][:email]
    expect(User.where(email: user_email).first.email).to eq(user_email)
  end

  it "should not create a user with error" do
    post '/users', user: { email: "", password: "", password_confirmation: "" }
    expect(response).to render_template('new')
    expect(response.body).to include("Form is invalid")
    expect(response.body).to include("Password")
    expect(response.body).to include("Email is invalid")
  end
end