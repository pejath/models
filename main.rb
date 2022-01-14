puts "Accounts that has more than 2 purchases"
ap Account.has_more_than(2).select(:nickname, :email, "count('id') as Purchases")
  "-"*200
puts "Cars that have been on sale for more than six months"
ap Product.joins(:tech_info).long_on_sale.select(:id, 'carBrand AS Brand', :color, :price,
                                                            'tech_infos.id AS "Technical information №"', 'wos AS "went on sale"')
puts "-"*200
puts "New cars"
ap Product.joins(:tech_info).new_auto.select(:id, 'car_brand AS Brand', :color, :price,
                                             'tech_infos.id AS "Technical information №"', 'wos AS "went on sale"')
puts "-"*200

puts "Volkswagen brand cars"
ap Product.joins(:tech_info).brand("Volkswagen").select(:id, 'car_brand AS Brand', :color, :price,
                                                                 'tech_infos.id AS "Technical information №"', 'wos AS "went on sale"')

