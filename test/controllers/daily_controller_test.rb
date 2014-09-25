require 'test_helper'

class DailyControllerTest < ActionController::TestCase
  test "should get augment_streak" do
    get :augment_streak
    assert_response :success
  end

end
