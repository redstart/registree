FactoryGirl.define do
  factory :user do
    surename "Petrov"
    name "Petr"
    second_name "Ivanovitch"
    birthday "1986-05-02"
    email    "ivan@example.com"
    login "peter"
    password "foobar"
    password_confirmation "foobar"
  end
end