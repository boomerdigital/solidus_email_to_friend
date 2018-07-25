FactoryBot.define do
  factory :mail, class: Spree::MailToFriend do
    host               'localhost'
    sequence(:sender_name) { |n| "Name #{n}" }
    sequence(:sender_email) { |n| "email#{n}@example.com" }
    sequence(:recipient_name) { |n| "Name #{n}" }
    sequence(:recipient_email) { |n| "email#{n}@example.com" }

    subject            'Check this out!'
    message            'Its totally awesome..'

    recipients         { Array(1..4).sample.times.map { |i| "recipient#{i}@example.com" } }
    invalid_recipients []
  end
end
