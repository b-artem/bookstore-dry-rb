# frozen_string_literal: true

FactoryGirl.define do
  factory :book do
    sequence(:title) { |n| "Title #{n}" }
    sequence(:description) { |n| "Description of Book #{n}. " * 35 }
    price { rand(10.0..150.0) }
    publication_year { Time.zone.today.year - rand(1..5) }
    dimensions { 'H: 9.0 x W: 7.0 x D: 0.9' }
    materials { 'Paperback' }

    trait :with_cover do
      after(:create) do |book|
        book.images.attach(
          io: File.open('spec/fixtures/files/covers/cover.jpg'),
          filename: 'cover.jpg'
        )
      end
    end
  end

  factory :book_random_category, parent: :book do
    categories { :category }
  end

  factory :book_mobile_development, parent: :book do
    after :create do |book|
      book.categories = [Category.find_or_create_by(name: 'Mobile development')]
    end
  end

  factory :book_photo, parent: :book do
    after :create do |book|
      book.categories = [Category.find_or_create_by(name: 'Photo')]
    end
  end

  factory :book_web_design, parent: :book do
    after :create do |book|
      book.categories = [Category.find_or_create_by(name: 'Web design')]
    end
  end

  factory :book_web_development, parent: :book do
    after :create do |book|
      book.categories = [Category.find_or_create_by(name: 'Web development')]
    end
  end
end
