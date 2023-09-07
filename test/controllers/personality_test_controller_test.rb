require "test_helper"

class PersonalityTestControllerTest < ActionDispatch::IntegrationTest
  test "should get start" do
    get personality_test_start_url
    assert_response :success
  end

  test "should get finish" do
    get personality_test_finish_url
    assert_response :success
  end
end
