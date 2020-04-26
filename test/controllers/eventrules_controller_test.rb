require 'test_helper'

class EventrulesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @eventrule = eventrules(:one)
  end

  test "should get index" do
    get eventrules_url, as: :json
    assert_response :success
  end

  test "should create eventrule" do
    assert_difference('Eventrule.count') do
      post eventrules_url, params: { eventrule: { name: @eventrule.name, rule: @eventrule.rule } }, as: :json
    end

    assert_response 201
  end

  test "should show eventrule" do
    get eventrule_url(@eventrule), as: :json
    assert_response :success
  end

  test "should update eventrule" do
    patch eventrule_url(@eventrule), params: { eventrule: { name: @eventrule.name, rule: @eventrule.rule } }, as: :json
    assert_response 200
  end

  test "should destroy eventrule" do
    assert_difference('Eventrule.count', -1) do
      delete eventrule_url(@eventrule), as: :json
    end

    assert_response 204
  end
end
