require 'json'
require_relative 'event'

class Calendar
  attr_reader :events
  
  def initialize
    @events = []
  end

  def add_event(event)
    @events << event
  end

  def remove_event(title)
    @events.reject! { |event| event.title == title }
  end

  def list_events
    @events.map(&:to_h).to_json
  end

  def load_events
    if File.exist?('events.json')
      @events = JSON.parse(File.read('events.json'), create_additions: true)
    end
  end

  def save_events
    File.write('events.json', @events.to_json)
  end
end
