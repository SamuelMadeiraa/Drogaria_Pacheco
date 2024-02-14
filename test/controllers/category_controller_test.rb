require "test_helper"

class CategoryControllerTest < ActionDispatch::IntegrationTest
  test "should get name:string" do
    get category_name:string_url
    assert_response :success
  end

  test "should get imagecategory:string" do
    get category_imagecategory:string_url
    assert_response :success
  end
end
