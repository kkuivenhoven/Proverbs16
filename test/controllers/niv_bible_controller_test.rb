require 'test_helper'

class NivBibleControllerTest < ActionDispatch::IntegrationTest
  test "should get proverbs" do
    get niv_bible_proverbs_url
    assert_response :success
  end

end
