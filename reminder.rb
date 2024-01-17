require_relative 'calendar'

class Reminder
  def initialize(calendar, settings)
    @calendar = calendar
    @settings = settings
  end

  def check_events
    # Make sure this method returns an array
    now = Time.now
    @calendar.events.filter_map do |event|
      event_time = Time.parse(event.date)
      event.title if (event_time - now) <= (@settings['reminder_lead_time'] * 60)
    end
  end

  # The place for additional reminder-related methods
end
