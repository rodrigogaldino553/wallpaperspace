require "test_helper"

class WallpapersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @wallpaper = wallpapers(:one)
  end

  test "should get index" do
    get wallpapers_url
    assert_response :success
  end

  test "should get new" do
    get new_wallpaper_url
    assert_response :success
  end

  test "should create wallpaper" do
    assert_difference('Wallpaper.count') do
      post wallpapers_url, params: { wallpaper: { category: @wallpaper.category, description: @wallpaper.description, name: @wallpaper.name } }
    end

    assert_redirected_to wallpaper_url(Wallpaper.last)
  end

  test "should show wallpaper" do
    get wallpaper_url(@wallpaper)
    assert_response :success
  end

  test "should get edit" do
    get edit_wallpaper_url(@wallpaper)
    assert_response :success
  end

  test "should update wallpaper" do
    patch wallpaper_url(@wallpaper), params: { wallpaper: { category: @wallpaper.category, description: @wallpaper.description, name: @wallpaper.name } }
    assert_redirected_to wallpaper_url(@wallpaper)
  end

  test "should destroy wallpaper" do
    assert_difference('Wallpaper.count', -1) do
      delete wallpaper_url(@wallpaper)
    end

    assert_redirected_to wallpapers_url
  end
end
