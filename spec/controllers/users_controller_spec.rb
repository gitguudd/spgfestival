require 'rails_helper'

RSpec.describe UsersController, type: :controller do

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

end
