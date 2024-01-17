require_relative '../calendar'
require_relative '../event'

RSpec.describe Calendar do
  before :each do
    @calendar = Calendar.new
    @event = Event.new('Code Review', '2024-01-19 13:00', 'Review PRs')
  end

  context "when adding an event" do
    it "should include the event in the list of events" do
      @calendar.add_event(@event)
      expect(@calendar.events).to include(@event)
    end
  end

  context "when removing an event" do
    it "should not include the event in the list of events" do
      @calendar.add_event(@event)
      @calendar.remove_event(@event.title)
      expect(@calendar.events).not_to include(@event)
    end
  end

  context "when listing events" do
    it "should return a list of all events" do
      @calendar.add_event(@event)
      listed_events = JSON.parse(@calendar.list_events)
      expected_events = [@event.to_h.transform_keys(&:to_s)] # Use transform_keys to convert symbol keys to strings
      expect(listed_events).to eq(expected_events)
    end
  end
end
 