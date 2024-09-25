require "test_helper"

class PrequalificationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @prequalification = prequalifications(:one)
  end

  test "should get index" do
    get prequalifications_url
    assert_response :success
  end

  test "should get new" do
    get new_prequalification_url
    assert_response :success
  end

  test "should create prequalification" do
    assert_difference("Prequalification.count") do
      post prequalifications_url, params: { prequalification: { prequalified_budget: @prequalification.prequalified_budget } }
    end

    assert_redirected_to prequalification_url(Prequalification.last)
  end

  test "should show prequalification" do
    get prequalification_url(@prequalification)
    assert_response :success
  end

  test "should get edit" do
    get edit_prequalification_url(@prequalification)
    assert_response :success
  end

  test "should update prequalification" do
    patch prequalification_url(@prequalification), params: { prequalification: { prequalified_budget: @prequalification.prequalified_budget } }
    assert_redirected_to prequalification_url(@prequalification)
  end

  test "should destroy prequalification" do
    assert_difference("Prequalification.count", -1) do
      delete prequalification_url(@prequalification)
    end

    assert_redirected_to prequalifications_url
  end
end
