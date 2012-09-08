# encoding: utf-8
#
require 'test_helper'

class Admin::UsersControllerTest < ActionController::TestCase
  setup do
    sign_in :user, users(:admin)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:users)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create user" do
    assert_difference('User.count') do
      post :create, user: { username: "fopbo", password: "1234foobar", password_confirmation: "12345foobar" }
    end

    assert_redirected_to admin_user_path(assigns(:user))
  end

#  test "should show event" do
#    get :show, id: @event
#    assert_response :success
#  end
#
#  test "should get edit" do
#    get :edit, id: @event
#    assert_response :success
#  end
#
#  test "should update event" do
#    put :update, id: @event, event: { description: @event.description, enddate: @event.enddate, startdate: @event.startdate, title: @event.title }
#    assert_redirected_to event_path(assigns(:event))
#  end
#
#  test "should destroy event" do
#    assert_difference('Event.count', -1) do
#      delete :destroy, id: @event
#    end
#
#    assert_redirected_to events_path
#  end
#
#  test "normal user should not be able to create events" do
#    user = users(:normaluser)
#    ability = Ability.new(user)
#    assert ability.cannot?(:save, events(:one))
#  end
#
#  test "admin user should not be able to create events" do
#    admin = users(:admin)
#    sign_in :user, admin
#    ability = Ability.new(admin)
#    assert ability.can?(:save, events(:one))
#  end
end


