require 'test_helper'

class LabelRequestsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @label_request = label_requests(:one)
  end

  test "should get index" do
    get label_requests_url
    assert_response :success
  end

  test "should get new" do
    get new_label_request_url
    assert_response :success
  end

  test "should create label_request" do
    assert_difference('LabelRequest.count') do
      post label_requests_url, params: { label_request: {  } }
    end

    assert_redirected_to label_request_url(LabelRequest.last)
  end

  test "should show label_request" do
    get label_request_url(@label_request)
    assert_response :success
  end

  test "should get edit" do
    get edit_label_request_url(@label_request)
    assert_response :success
  end

  test "should update label_request" do
    patch label_request_url(@label_request), params: { label_request: {  } }
    assert_redirected_to label_request_url(@label_request)
  end

  test "should destroy label_request" do
    assert_difference('LabelRequest.count', -1) do
      delete label_request_url(@label_request)
    end

    assert_redirected_to label_requests_url
  end
end
