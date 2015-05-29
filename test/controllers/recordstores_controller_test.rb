require 'test_helper'

class RecordstoresControllerTest < ActionController::TestCase
  setup do
    @recordstore = recordstores(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:recordstores)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create recordstore" do
    assert_difference('Recordstore.count') do
      post :create, recordstore: { city: @recordstore.city, code: @recordstore.code, contact_email: @recordstore.contact_email, contact_fax: @recordstore.contact_fax, contact_name: @recordstore.contact_name, contact_number: @recordstore.contact_number, content: @recordstore.content, logo_url: @recordstore.logo_url, name: @recordstore.name, seo_description: @recordstore.seo_description, seo_title: @recordstore.seo_title, street: @recordstore.street }
    end

    assert_redirected_to recordstore_path(assigns(:recordstore))
  end

  test "should show recordstore" do
    get :show, id: @recordstore
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @recordstore
    assert_response :success
  end

  test "should update recordstore" do
    patch :update, id: @recordstore, recordstore: { city: @recordstore.city, code: @recordstore.code, contact_email: @recordstore.contact_email, contact_fax: @recordstore.contact_fax, contact_name: @recordstore.contact_name, contact_number: @recordstore.contact_number, content: @recordstore.content, logo_url: @recordstore.logo_url, name: @recordstore.name, seo_description: @recordstore.seo_description, seo_title: @recordstore.seo_title, street: @recordstore.street }
    assert_redirected_to recordstore_path(assigns(:recordstore))
  end

  test "should destroy recordstore" do
    assert_difference('Recordstore.count', -1) do
      delete :destroy, id: @recordstore
    end

    assert_redirected_to recordstores_path
  end
end
