FactoryBot.define do
  factory :article do
    title { "MyString_isatleast10char" }
    content { "MyText_isatleast10char" }
  end
end
