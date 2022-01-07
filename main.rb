
ap Account.joins(:purchase).group(:account_id).select(:id, :nickName, :email, 'count("account_d") AS purchases', :created_at)
puts "-"*200

ap Product.joins(:tech_info).long_on_sale.select(:id, 'carBrand AS Brand', :color, :price,
                                                            'tech_infos.id AS "Technical information №"', 'wos AS "went on sale"')
puts "-"*200
ap Product.joins(:tech_info).new_auto.select(:id, 'carBrand AS Brand', :color, :price,
                                             'tech_infos.id AS "Technical information №"', 'wos AS "went on sale"')
puts "-"*200
ap Product.joins(:tech_info).brand("Volkswagen").new_auto.select(:id, 'carBrand AS Brand', :color, :price,
                                                                 'tech_infos.id AS "Technical information №"', 'wos AS "went on sale"')
puts "-"*200
ap TechInfo.select(:id, :product_id, "bodyType as 'Body Type'", "doorsNum as 'Number of doors'",
                   "seatsNum as ' Number of Seats'", "engineType as 'Engine Type'", "engineDispl as 'Engine Displacement'").order(:product_id)
