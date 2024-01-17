# Event Scheduler and Reminder

## Objective
A command-line tool that allows users to schedule and be reminded of events.

## Instructions
- Data Generation: Users can create events with details like title, date, and description.
- Object-Oriented Design: Includes classes like Event, Calendar, and Reminder.
- Configuration: Settings like reminder lead time and default event durations are stored in a YAML file.
- Output: Upcoming events and reminders are displayed in JSON format.
- Interactivity: Users can add, delete, and list events through a command-line interface.
- Documentation: Code is well-commented and documented following best practices.

## Setup
1. Clone the repository:
git clone https://github.com/inlibra-cpa/event_scheduler2.git

2. Navigate to the repository directory:
cd event_scheduler2

3. Run the tool using Ruby:
ruby main.rb [options]


## Usage
To add an event:
ruby main.rb --add "Event Title,Event Date,Event Description"


To list all events:
ruby main.rb --list


To delete an event:
ruby main.rb --delete "Event Title"


To display reminders:
ruby main.rb --remind


## Configuration
- The `settings.yml` file contains configuration for default event duration and reminder lead time.
- Edit this file to change the settings as per your requirements.

## Evaluation Criteria
- Application of object-oriented concepts in code.
- Effective use of external configuration files.
- Functionality and format of the JSON output.
- Code readability and comprehensive documentation.

## Project Details
Include any additional information about the project, like different functionalities and how they can be accessed or tested.

## Contributing
I'm open to contributions. 
Please submit pull requests.

## License
MIT License.

## Author
Inara T. - inlibra@gmail.com


## Coding Challenge Improvements

The provided project descriptions are well-structured and offer clear guidance on expectations. 
However, there are several areas where we can enhance these instructions to better align with industry best practices 
and to give candidates a clearer understanding of the project goals and constraints.

# General Improvements for All Projects

## Testing
- Include unit tests to validate functionality. Tests should cover all core features of the application.

## Error Handling
- Implement comprehensive error handling to manage unexpected inputs and system errors gracefully.

# Specific Improvements for Each Project

## Project 1: Weather Data Processor
- **Data Source**: Clarify if weather data should mimic real patterns or be completely random. Consider integrating a real weather API for data retrieval.
- **Data Persistence**: Decide if weather data should be persistently stored or generated anew for each execution.
- **Extensibility**: Ensure the design can accommodate new weather metrics in the future without significant refactoring.

## Project 2: Stock Portfolio Simulator
- **Simulation Realism**: Define the level of realism for the stock simulation. Will it follow real market trends or use a simplified model?
- **Reporting**: Include functionality to produce a summary report of the portfolio's performance over time.

## Project 3: Library Management System
- **User Accounts**: Implement user account management to track which user has checked out which books.
- **Due Dates and Overdue Handling**: Add features to manage due dates for books and notifications for overdue items.

## Project 4: Event Scheduler and Reminder
- **Time Zones**: Handle events across different time zones appropriately.
- **Recurring Events**: Allow users to schedule events that recur on a regular basis.
- **Notification System**: Establish a notification system for reminders - this could be through email, desktop notifications, or command-line logs.

