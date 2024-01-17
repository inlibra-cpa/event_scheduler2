require 'time'
require_relative '../reminder'
require_relative '../calendar'
require_relative '../event'

RSpec.describe Reminder do
  let(:current_time) { Time.parse('2024-01-19 12:30') }

  before :each do
    @calendar = Calendar.new
    @event = Event.new('Team Meeting', '2024-01-19 13:00', 'Discuss project updates')
    @calendar.add_event(@event)
    # Assuming 'settings' is a hash with reminder-related configuration.
    @settings = { 'reminder_lead_time' => 30 } # for example
    @reminder = Reminder.new(@calendar, @settings)
  end

  context "when checking for upcoming events" do
    it "should return reminders for events happening soon" do
      # Ensure Time.now is stubbed before the Reminder instance is created
      # because Reminder might capture the current time in its initializer
      allow(Time).to receive(:now).and_return(Time.parse('2024-01-19 12:30'))

      # Recreate the Reminder instance if it captures the current time upon initialization
      @reminder = Reminder.new(@calendar, @settings)

      # Call the method and store the result
      reminders = @reminder.check_events

      # Check the result
      expect(reminders).to include('Team Meeting')
    end
  end

  context "when no events are upcoming" do
    it "should return an empty list" do
      allow(Time).to receive(:now).and_return(Time.parse('2024-01-18 12:30'))
      reminders = @reminder.check_events
      expect(reminders).to be_empty
    end
  end
end
