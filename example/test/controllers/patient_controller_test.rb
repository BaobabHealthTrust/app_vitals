require 'test_helper'

class PatientControllerTest < ActionController::TestCase
  test "should get vitals" do
    get :vitals
    assert_response :success
  end

end
