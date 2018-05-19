require 'test_helper'

class YamanoteLinesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @yamanote_line = yamanote_lines(:one)
  end

  test "should get index" do
    get yamanote_lines_url
    assert_response :success
  end

  test "should get new" do
    get new_yamanote_line_url
    assert_response :success
  end

  test "should create yamanote_line" do
    assert_difference('YamanoteLine.count') do
      post yamanote_lines_url, params: { yamanote_line: { station: @yamanote_line.station } }
    end

    assert_redirected_to yamanote_line_url(YamanoteLine.last)
  end

  test "should show yamanote_line" do
    get yamanote_line_url(@yamanote_line)
    assert_response :success
  end

  test "should get edit" do
    get edit_yamanote_line_url(@yamanote_line)
    assert_response :success
  end

  test "should update yamanote_line" do
    patch yamanote_line_url(@yamanote_line), params: { yamanote_line: { station: @yamanote_line.station } }
    assert_redirected_to yamanote_line_url(@yamanote_line)
  end

  test "should destroy yamanote_line" do
    assert_difference('YamanoteLine.count', -1) do
      delete yamanote_line_url(@yamanote_line)
    end

    assert_redirected_to yamanote_lines_url
  end
end
