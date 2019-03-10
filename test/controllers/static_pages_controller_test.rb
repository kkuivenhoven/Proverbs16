require 'test_helper'

class StaticPagesControllerTest < ActionDispatch::IntegrationTest

	test "get Proverbs 1 path" do
    get static_pages_proverbs1_url
    assert_response :success, "successfully obtained Prov. 1"
	end

	test "get Proverbs 2 path" do
    get static_pages_proverbs2_url
    assert_response :success
	end

	test "get Proverbs 3 path" do
    get static_pages_proverbs3_url
    assert_response :success
	end

	test "get Proverbs 4 path" do
    get static_pages_proverbs4_url
    assert_response :success
	end

end
