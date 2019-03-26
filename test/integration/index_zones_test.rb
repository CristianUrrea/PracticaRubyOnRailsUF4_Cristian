require 'test_helper'

class IndexZonesTest < ActionDispatch::IntegrationTest

  test "index zones" do
    get zones_url
    assert_template 'zones/index'
    # assert_match "zone_index", response.body
    assert_response :success

  end
end
