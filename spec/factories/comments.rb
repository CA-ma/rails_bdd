FactoryBot.define do
  factory :comment do
    commenter { "MyString" }
    email { "MyEmail@gmail.com"}
    body { "MyText" }
    article { Article.new }
  end
end
