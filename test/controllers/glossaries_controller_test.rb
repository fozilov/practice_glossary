require 'test_helper'

class GlossariesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @glossary = glossaries(:one)
  end

  test "should get index" do
    get glossaries_url
    assert_response :success
  end

  test "should get new" do
    get new_glossary_url
    assert_response :success
  end

  test "should create glossary" do
    assert_difference('Glossary.count') do
      post glossaries_url, params: { glossary: { description: @glossary.description, development_name: @glossary.development_name, english_name: @glossary.english_name, external_use: @glossary.external_use, name: @glossary.name, status: @glossary.status } }
    end

    assert_redirected_to glossary_url(Glossary.last)
  end

  test "should show glossary" do
    get glossary_url(@glossary)
    assert_response :success
  end

  test "should get edit" do
    get edit_glossary_url(@glossary)
    assert_response :success
  end

  test "should update glossary" do
    patch glossary_url(@glossary), params: { glossary: { description: @glossary.description, development_name: @glossary.development_name, english_name: @glossary.english_name, external_use: @glossary.external_use, name: @glossary.name, status: @glossary.status } }
    assert_redirected_to glossary_url(@glossary)
  end

  test "should destroy glossary" do
    assert_difference('Glossary.count', -1) do
      delete glossary_url(@glossary)
    end

    assert_redirected_to glossaries_url
  end
end
