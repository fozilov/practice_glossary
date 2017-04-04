require 'test_helper'

class GlossaryRequestsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @glossary_request = glossary_requests(:one)
  end

  test "should get index" do
    get glossary_requests_url
    assert_response :success
  end

  test "should get new" do
    get new_glossary_request_url
    assert_response :success
  end

  test "should create glossary_request" do
    assert_difference('GlossaryRequest.count') do
      post glossary_requests_url, params: { glossary_request: {  } }
    end

    assert_redirected_to glossary_request_url(GlossaryRequest.last)
  end

  test "should show glossary_request" do
    get glossary_request_url(@glossary_request)
    assert_response :success
  end

  test "should get edit" do
    get edit_glossary_request_url(@glossary_request)
    assert_response :success
  end

  test "should update glossary_request" do
    patch glossary_request_url(@glossary_request), params: { glossary_request: {  } }
    assert_redirected_to glossary_request_url(@glossary_request)
  end

  test "should destroy glossary_request" do
    assert_difference('GlossaryRequest.count', -1) do
      delete glossary_request_url(@glossary_request)
    end

    assert_redirected_to glossary_requests_url
  end
end
