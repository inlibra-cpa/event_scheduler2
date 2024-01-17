require_relative 'calendar'

class Reminder
  def initialize(calendar, settings)
    @calendar = calendar
    @settings = settings
  end

  def check_events
    now = Time.now
    puts "Current time: #{now}"  # Debugging: print the current time

    @calendar.events.filter_map do |event|
      event_time = Time.parse(event.date)
      puts "Event time for '#{event.title}': #{event_time}"  # Debugging: print the time of each event

      if (event_time - now) <= (@settings['reminder_lead_time'] * 60)
        puts "Reminder for event: #{event.title}"  # Debugging: print the reminder
        event.title
      end
    end.compact  # Ensure nil values are removed if no reminders are due
  end
end
