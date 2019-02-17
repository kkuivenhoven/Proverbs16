require 'test_helper'

class CommonControllerTest < ActionDispatch::IntegrationTest
  test "should get words" do
    get common_words_url
    assert_response :success
  end

end
