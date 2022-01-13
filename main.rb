#
ap Account.has_more_than(2).select(:nickname, :email, "count('id') as Purchases")
  "-"*200

ap Product.joins(:tech_info).long_on_sale.select(:id, 'carBrand AS Brand', :color, :price,
                                                            'tech_infos.id AS "Technical information №"', 'wos AS "went on sale"')
puts "-"*200
ap Product.joins(:tech_info).new_auto.select(:id, 'car_brand AS Brand', :color, :price,
                                             'tech_infos.id AS "Technical information №"', 'wos AS "went on sale"')
puts "-"*200
ap Product.joins(:tech_info).brand("Volkswagen").select(:id, 'car_brand AS Brand', :color, :price,
                                                                 'tech_infos.id AS "Technical information №"', 'wos AS "went on sale"')
puts "-"*200
ap TechInfo.select(:id, :product_id, "body_type as 'Body Type'", "doors_num as 'Number of doors'",
                   "seats_num as ' Number of Seats'", "engine_type as 'Engine Type'", "engine_displ as 'Engine Displacement'").order(:product_id)
