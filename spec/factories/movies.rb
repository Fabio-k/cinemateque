FactoryBot.define do
  factory :movie do
    title { "The interview" }
    year { 2000 }
    plot { "MyText" }
    director { "MyString" }
  end
end
