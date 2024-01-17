#!/usr/bin/env ruby

require 'optparse'
require 'yaml'
require 'json'
require_relative 'event'
require_relative 'calendar'
require_relative 'reminder'

# Load settings from settings.yml
settings = YAML.load_file('settings.yml')

# Initialize a new Calendar
calendar = Calendar.new

# Define options for the command-line tool
OptionParser.new do |opts|
  opts.banner = "Usage: main.rb [options]"

  opts.on("-a", "--add TITLE,DATE,DESCRIPTION", "Add a new event") do |event|
    title, date, description = event.split(',')
    # Create a new Event instance and add it to the calendar.
    new_event = Event.new(title, date, description)
    calendar.add_event(new_event)
    puts "Event added: #{new_event.title}"
  end

  opts.on("-d", "--delete TITLE", "Delete an event") do |title|
    # Call the delete method on the calendar with the event title.
    calendar.remove_event(title)
    puts "Event deleted: #{title}"
  end

  opts.on("-l", "--list", "List all events") do
    # List all events in the calendar.
    puts "Listing all events:"
    puts calendar.list_events
  end

  opts.on("-r", "--remind", "Show reminders for upcoming events") do
    # Check and display reminders for upcoming events.
    reminder = Reminder.new(calendar, settings)
    puts "Upcoming event reminders:"
    puts reminder.check_events
  end

  # Default message when no arguments are provided  
  if ARGV.empty?
    puts "No options provided. For usage, run: ./main.rb --help"
  end  
end.parse!
