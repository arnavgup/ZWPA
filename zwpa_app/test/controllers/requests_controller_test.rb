require 'test_helper'

class RequestsControllerTest < ActionController::TestCase
  setup do
    @request = requests(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:requests)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create request" do
    assert_difference('Request.count') do
      post :create, request: { Note: @request.Note, city: @request.city, contact_firstname: @request.contact_firstname, contact_lastname: @request.contact_lastname, customer_id: @request.customer_id, date: @request.date, description: @request.description, email: @request.email, phone: @request.phone, photo: @request.photo, request_id: @request.request_id, state: @request.state, street_address: @request.street_address, title: @request.title }
    end

    assert_redirected_to request_path(assigns(:request))
  end

  test "should show request" do
    get :show, id: @request
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @request
    assert_response :success
  end

  test "should update request" do
    patch :update, id: @request, request: { Note: @request.Note, city: @request.city, contact_firstname: @request.contact_firstname, contact_lastname: @request.contact_lastname, customer_id: @request.customer_id, date: @request.date, description: @request.description, email: @request.email, phone: @request.phone, photo: @request.photo, request_id: @request.request_id, state: @request.state, street_address: @request.street_address, title: @request.title }
    assert_redirected_to request_path(assigns(:request))
  end

  test "should destroy request" do
    assert_difference('Request.count', -1) do
      delete :destroy, id: @request
    end

    assert_redirected_to requests_path
  end
end