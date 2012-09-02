# encoding: utf-8
#
require 'test_helper'

class EventsControllerTest < ActionController::TestCase
  setup do
    @event = events(:one)
    sign_in :user, users(:admin)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:events)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create event" do
    assert_difference('Event.count') do
      post :create, event: { description: @event.description, enddate: @event.enddate, startdate: @event.startdate, title: @event.title, location: @event.location }
    end

    assert_redirected_to event_path(assigns(:event))
  end

  test "should show event" do
    get :show, id: @event
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @event
    assert_response :success
  end

  test "should update event" do
    put :update, id: @event, event: { description: @event.description, enddate: @event.enddate, startdate: @event.startdate, title: @event.title }
    assert_redirected_to event_path(assigns(:event))
  end

  test "should destroy event" do
    assert_difference('Event.count', -1) do
      delete :destroy, id: @event
    end

    assert_redirected_to events_path
  end

  test "normal user should not be able to create events" do
    user = users(:normaluser)
    ability = Ability.new(user)
    assert ability.cannot?(:save, events(:one))
  end

  test "admin user should not be able to create events" do
    admin = users(:admin)
    sign_in :user, admin
    ability = Ability.new(admin)
    assert ability.can?(:save, events(:one))
  end

  # test "should raise CanCan Exaption if nomal user creates an event" do
  #   assert_raise( CanCan::AccessDenied ) {
  #     user = users(:normaluser)
  #     sign_in :user, user
  #     ability = Ability.new(user)
  #     post :create, event: { description: @event.description, enddate: @event.enddate, startdate: @event.startdate, title: @event.title, location: @event.location }
  #   }
  # end

  test "should redirect to root path if nomal user creates an event" do
    user = users(:normaluser)
    sign_in :user, user
    post :create, event: { description: @event.description, enddate: @event.enddate, startdate: @event.startdate, title: @event.title, location: @event.location }
    assert_redirected_to root_path
  end

  test "should flash notice in german if normal user tries to create an event" do
    user = users(:normaluser)
    sign_in :user, user
    post :create, event: { description: @event.description, enddate: @event.enddate, startdate: @event.startdate, title: @event.title, location: @event.location }
    assert_equal 'Zugriff verweigert! Deine Benutzerrechte reichen nicht aus einen Termin zu erstellen.', flash[:alert]
  end

  test "should flash notice in german if normal user tries to update an event" do
    user = users(:normaluser)
    sign_in :user, user
    put :update, id: @event, event: { description: @event.description, enddate: @event.enddate, startdate: @event.startdate, title: @event.title }
    assert_equal 'Zugriff verweigert! Deine Benutzerrechte reichen nicht aus diesen Termin zu bearbeiten.', flash[:alert]
  end

  test "should flash notice in german if normal user tries to delete an event" do
    user = users(:normaluser)
    sign_in :user, user
    delete :destroy, id: @event
    assert_equal 'Zugriff verweigert! Deine Benutzerrechte reichen nicht aus diesen Termin zu löschen.', flash[:alert]
  end



  test "should create event with file upload" do
    assert_difference('Event.count') do
      post :create, event: { title: @event.title, startdate: @event.startdate, enddate: @event.enddate } 
    end
  end


end
