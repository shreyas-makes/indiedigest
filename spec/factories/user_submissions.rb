FactoryBot.define do
  factory :user_submission do
    first_name { "MyString" }
    last_name { "MyString" }
    email { "MyString" }
    website { "MyString" }
    text { "MyText" }
    job_role { "MyString" }
    status { "MyString" }
  end
end
