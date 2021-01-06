FactoryBot.define do
  factory :user do
    username { 'Julia' }
    password_digest { '123456' }
    session_token {'1231231adsdada'}
  end
end