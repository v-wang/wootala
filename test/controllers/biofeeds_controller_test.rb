require 'test_helper'

class BiofeedsControllerTest < ActionController::TestCase
  setup do
    @biofeed = biofeeds(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:biofeeds)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create biofeed" do
    assert_difference('Biofeed.count') do
      post :create, biofeed: { description: @biofeed.description }
    end

    assert_redirected_to biofeed_path(assigns(:biofeed))
  end

  test "should show biofeed" do
    get :show, id: @biofeed
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @biofeed
    assert_response :success
  end

  test "should update biofeed" do
    patch :update, id: @biofeed, biofeed: { description: @biofeed.description }
    assert_redirected_to biofeed_path(assigns(:biofeed))
  end

  test "should destroy biofeed" do
    assert_difference('Biofeed.count', -1) do
      delete :destroy, id: @biofeed
    end

    assert_redirected_to biofeeds_path
  end
end
