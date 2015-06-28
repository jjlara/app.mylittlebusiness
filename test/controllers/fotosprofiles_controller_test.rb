require 'test_helper'

class FotosprofilesControllerTest < ActionController::TestCase
  setup do
    @fotosprofile = fotosprofiles(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:fotosprofiles)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create fotosprofile" do
    assert_difference('Fotosprofile.count') do
      post :create, fotosprofile: { user_id: @fotosprofile.user_id }
    end

    assert_redirected_to fotosprofile_path(assigns(:fotosprofile))
  end

  test "should show fotosprofile" do
    get :show, id: @fotosprofile
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @fotosprofile
    assert_response :success
  end

  test "should update fotosprofile" do
    patch :update, id: @fotosprofile, fotosprofile: { user_id: @fotosprofile.user_id }
    assert_redirected_to fotosprofile_path(assigns(:fotosprofile))
  end

  test "should destroy fotosprofile" do
    assert_difference('Fotosprofile.count', -1) do
      delete :destroy, id: @fotosprofile
    end

    assert_redirected_to fotosprofiles_path
  end
end
