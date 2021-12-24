require "test_helper"

class TechInfoTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  setup do
  end
  test "number of doors" do
    @tech1 = TechInfo.new(bodyType: "Coupe", doorsNum: -1, seatsNum: -1, engineType:"Diesel", engineLocate: "Front", engineDispl: 1.2)

    assert_not @tech1.save, "Wrong number of doors"
  end
end
