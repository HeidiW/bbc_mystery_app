require 'test_helper'

class ProfilesControllerTest < ActionController::TestCase
  test "should get show" do

  test "should render a 404 on profile not found" do
  	get :show, id: "doesn't exist"
  	assert_response :not_found

  end
  test "that variables are assigned on successful profile viewing" do
  	get :show, id: users(:jason).profile_name
  	assert_assigns (:user)
  	assert_not_empty assigns(:statuses)
  end
end
end
