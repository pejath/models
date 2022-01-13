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
@nickName = %w[Onaldina Kovittan Bettel Phael Quinle Ycaaa Chaim Karshan Sese Maralyn Corma Tainsl Onne Malonet Zolankaa Kathe Bsterrya Paisier Gannanco Torre Randay Ugust Zzieanas Yamka Anas Abiassom Gonys Gavrit Genervat Zuria Sean Marguel Phonde Dair Wighto Bryonce Freda Rickayd Kiarendi Inet]
@randvalue = rand(0...40)

(0..7).each do |i|
  Person.create(full_name: "#{@names.sample} #{@surnames.sample}", passport_series: rand(1000..9999),
                passport_num: rand(10..99), home_adress:"#{i}", phone_num: rand(100..999))
  Person.last.pictures << Picture.new(name: "Person pic #{i}")
end

(0..7).each do |i|
  (@randvalue = rand(0...40)) while Account.exists?(nickname: @nickName[@randvalue])

  Account.create(person_id: i, admin: false, nickname:@nickName[@randvalue], password: SecureRandom.hex[0..10], email: "#{SecureRandom.hex[0..5]}@example.com")
end

3.times do

  (@randvalue = rand(0...40)) while Account.exists?(nickname: @nickName[@randvalue])
  Account.create(person_id: rand(0..7), admin: true, nickname: @nickName[@randvalue], password: SecureRandom.hex[0..15], email: "#{SecureRandom.hex[0..5]}@example.com")
end

(0..10).each { |i|
  Product.create(car_brand: @brands.sample, color: @colors.sample, price: rand(1000.0 .. 100000.0).round(2), wos: "20#{rand(20..22)}.#{month = rand(1..12)}.#{month != 2? rand(1..28):rand(1..30)}")
  Product.last.pictures << Picture.new(name: "Product pic #{rand(11..20)}")
}
(0..10).each{|i|
  Product.create(car_brand: @brands.sample, color: @colors.sample, price: rand(1000.0 .. 100000.0).round(2), wos: "20#{rand(16..20)}.#{month = rand(1..12)}.#{month != 2? rand(1..28):rand(1..30)}")
  3.times{Product.last.pictures << Picture.new(name: "Product pic #{rand(21..30)}")}
}
(1..22).each{ |i|
  (@randvalue = rand(1..22)) while TechInfo.exists?(product_id: @randvalue.to_s)
  TechInfo.create(product_id: @randvalue.to_s, body_type: @bodytype.sample, doors_num: rand(1..5), seats_num: rand(1..10), engine_type: eng = @engine.sample, engine_displ: eng == "Electrical"? 0.0 : rand(0.1..8.0).round(2))
}

(0..20).each do |i|
  Purchase.create(account_id: rand(11), product_id: i, delivery:[true, false].sample, type_of_payment: ["card", "cash"].sample)
end

