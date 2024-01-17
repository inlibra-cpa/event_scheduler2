class Event
  attr_accessor :title, :date, :description
  
  def initialize(title, date, description)
    @title = title
    @date = date
    @description = description
  end

  def to_h
    { 'title' => @title, 'date' => @date, 'description' => @description }
  end
end
  