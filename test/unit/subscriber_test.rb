require 'test_helper'

class SubscriberTest < ActiveSupport::TestCase
  setup do
    @subscriber = subscribers(:one)
  end

  test "should not save subsriber without firstname" do
    @subscriber.firstname = nil
    assert !@subscriber.save,  "Saved the subscriber without a firstname"
  end

  test "should not save subsriber without lastname" do
    @subscriber.lastname = nil
    assert !@subscriber.save,  "Saved the subscriber without a lastname"
  end

  test "should not save subsriber without email" do
    @subscriber.email = nil
    assert !@subscriber.save,  "Saved the subscriber without a email"
  end

  test "should not save subsriber without valid email" do
    @subscriber.email = "foo"
    assert !@subscriber.save,  "Saved the subscriber without a valid email"
  end

  test "should save subsriber with valid email" do
    @subscriber.email = "foo@bar.com"
    assert @subscriber.save,  "Saved the subscriber with a valid email"
  end

end
