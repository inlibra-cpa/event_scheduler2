require_relative '../event'

RSpec.describe Event do
  context "when creating an event" do
    it "should have a title, date, and description" do
      event = Event.new('Meeting', '2024-01-19 13:00', 'Meeting with Raphael')
      expect(event.title).to eq('Meeting')
      expect(event.date).to eq('2024-01-19 13:00')
      expect(event.description).to eq('Meeting with Raphael')
    end
  end
end
