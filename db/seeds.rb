# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'securerandom'

@names    = %w[Zaki Josiah Santino Fernando Bruno Osmar Kaleb Isaak Harry Yousef]
@surnames = %w[Wilson Garcia Roberts Bennett Simmons Flores Edwards Parker Rivera Bennett]
@brands   = %w[Audi BMW Ford Honda Hyundai Kia Lada Mazda Mercedes-Benz Mitsubishi Nissan Renault Skoda Toyota	Volkswagen]
@colors   = %w[red orange yellow green blue indigo violet black white]
@bodytype = ['Sedan', 'Coupe', 'Sports Car', 'Station Wagon', 'Hatchback', 'Convertible', 'Minivan']
@engine   = %w[Electrical Diesel Petrol]

(0..7).each do |i|
  Person.create(fullName: "#{@names.sample} #{@surnames.sample}", passportSeries: rand(1000..9999),
                passportNum: rand(10..99), homeAdress:"#{i}", phoneNum: rand(100..999))
end

(0..7).each do |i|
  Account.create(person_id: i, admin: false, password: SecureRandom.hex[0..10], email: "#{SecureRandom.hex[0..5]}@example.com")
end
3.times do
  Account.create(person_id: rand(0..7), admin: true, password: SecureRandom.hex[0..15], email: "#{SecureRandom.hex[0..5]}@example.com")
  end

(0..10).each { |i|
  Product.create(carBrand: @brands.sample, color: @colors.sample, price: rand(1000.0 .. 100000.0).round(2), wos: "20#{rand(20..22)}.#{month = rand(1..12)}.#{month != 2? rand(1..28):rand(1..30)}")
}
(0..10).each{|i|
  Product.create(carBrand: @brands.sample, color: @colors.sample, price: rand(1000.0 .. 100000.0).round(2), wos: "20#{rand(16..20)}.#{month = rand(1..12)}.#{month != 2? rand(1..28):rand(1..30)}")
}
(1..22).each{ |i|
  TechInfo.create(product_id:i, bodyType: @bodytype.sample, doorsNum: rand(1..5), seatsNum: rand(1..10), engineType: eng = @engine.sample, engineDispl: eng == "Electrical"? 0.0 : rand(0.1..8.0).round(2))
}

(0..20).each do |i|
  Purchase.create(account_id: rand(11), product_id: i, delivert:[true, false].sample, typeOfPayment: ["card", "cash"].sample)
end

