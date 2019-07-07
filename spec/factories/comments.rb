FactoryBot.define do
  factory :comment do
    commenter { "MyString" }
    body { "MyText" }
    article { Article.new }
  end
end
