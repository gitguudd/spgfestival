require 'rails_helper'

describe UsersController do

  context "#create a valid user" do
    let(:params) { { user:{first_name: 'Zaboomafoo', last_name: 'Meekus', password: '123test', password_confirmation: '123test', email: "stuff@stuff.com"} } }

    it 'should respond with a 201' do
      post :create, params: params
      expect(response.code).to eq "201"
    end
  end

  context "#create an invalid user" do
    let(:params) { { user:{first_name: 'Zaboomafoo', last_name: 'Meekus', password: '123test', password_confirmation: '123tester', email: "stuff@stuff.com"} } }

    it 'should respond with a 400' do
      post :create, params: params
      expect(response.code).to eq "400"
    end
  end

  context "#show a created user" do
    let(:user) { create(:user) }
    let(:admin) { create(:user, :admin) }

    it "should return a created user" do
      get :show, params: { id: user.id }
      expect(response.code).to eq "200"
    end
  end

end
