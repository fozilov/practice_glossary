require 'test_helper'

class GlossaryLabelsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @glossary_label = glossary_labels(:one)
  end

  test "should get index" do
    get glossary_labels_url
    assert_response :success
  end

  test "should get new" do
    get new_glossary_label_url
    assert_response :success
  end

  test "should create glossary_label" do
    assert_difference('GlossaryLabel.count') do
      post glossary_labels_url, params: { glossary_label: {  } }
    end

    assert_redirected_to glossary_label_url(GlossaryLabel.last)
  end

  test "should show glossary_label" do
    get glossary_label_url(@glossary_label)
    assert_response :success
  end

  test "should get edit" do
    get edit_glossary_label_url(@glossary_label)
    assert_response :success
  end

  test "should update glossary_label" do
    patch glossary_label_url(@glossary_label), params: { glossary_label: {  } }
    assert_redirected_to glossary_label_url(@glossary_label)
  end

  test "should destroy glossary_label" do
    assert_difference('GlossaryLabel.count', -1) do
      delete glossary_label_url(@glossary_label)
    end

    assert_redirected_to glossary_labels_url
  end
end
