require 'test_helper'

class ProductTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  setup do
    @product1 = Product.new
    @product2 = Product.new(countryOrin:'Germany',carBrand:'Merc', model:'slc', color:'black', availability:true, price: 99999.99)
    @product3 = Product.new(countryOrin:'Germany',carBrand:'Merc', model:'slc', color:'zeleniy', availability:true, price: 99999.99)
    # @product4 = Product.new(countryOrin:"Germany",carBrand:"Merc", model:"slc", color:"black white", availability:true, price: 99999.99)
    @product5 = Product.new(countryOrin:'Germany',carBrand:'Merc', model:'slc', color:'black', price: 99999.99)
    # @product6
  end
  test 'valid?' do
    assert_not @product1.save, 'Saved without anything'
    assert @product2.save, "Don't save with whole data"
    assert_not @product3.save, 'Wrong color'
    # assert @product4.save, "Double color"
    assert_not @product5.save, 'Something is missing'
  end
end
