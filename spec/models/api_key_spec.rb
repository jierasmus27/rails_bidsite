require 'rails_helper'

RSpec.describe ApiKey, type: :model do
  describe "create new api_key" do
    it "generates an accessible access_token" do
       user = FactoryGirl.create(:user)
       api_key = FactoryGirl.create(:api_key, :user => user)
       expect(api_key.access_token).to_not be_nil 
    end

    it "generates a unique access_token" do
       user = FactoryGirl.create(:user)
       api_key = FactoryGirl.create(:api_key, :user => user)
 
       second_user = FactoryGirl.create(:user, :email => 'test_second@test.com')
       second_api_key = FactoryGirl.create(:api_key, :user => second_user)       
 
       expect(api_key.access_token).to_not eq(second_api_key.access_token)
    end

  end
end
