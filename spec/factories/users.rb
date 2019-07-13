FactoryBot.define do
  factory :user do
    email {"myEmail@gmail.com"}
    encrypted_password {"myPassword"}
  end
end
