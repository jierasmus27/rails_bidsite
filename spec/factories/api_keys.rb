FactoryGirl.define do
  factory :api_key do
    access_token "MyString"
    expires_at "2015-07-13 20:00:15"
    user nil
  end

end
