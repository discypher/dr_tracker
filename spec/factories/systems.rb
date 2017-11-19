FactoryBot.define do
  factory :system do
    priority
    description "Stuff"
    doc_link "https://example.com"
    team
  end

  factory :system_with_dependencies, parent: :system do |system|
    dependencies { build_list :system, 2 }
  end
end
