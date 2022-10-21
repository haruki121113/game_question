FactoryBot.define do
  factory :question do
    title     {'質問タイトル'}
    content   {'質問の具体的な内容'}

    association :user
  end
end
