require 'test_helper'

class EventTest < ActiveSupport::TestCase
  setup do
    @event = events(:one)
  end

  test "should not save event without title" do
    @event.title = nil
    assert !@event.save, "Saved the event without a title"
  end

  test "should not save event without startdate" do
    @event.startdate = nil
    assert !@event.save, "Saved the event without a startdate"
  end

  test "should not save event without enddate" do
    @event.enddate = nil
    assert !@event.save, "Saved the event without a enddate"
  end


end
