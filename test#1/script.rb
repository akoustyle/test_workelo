require_relative 'compare_calendars_service'
require 'open-uri'
require 'json'

  sandra = JSON.parse(URI.open('https://raw.githubusercontent.com/Workelo/workelo-test/master/test%231/input_sandra.json').read)
  andy = JSON.parse(URI.open('https://raw.githubusercontent.com/Workelo/workelo-test/master/test%231/input_andy.json').read)

  service = CompareCalendarsService.new(sandra, andy)
  p service.find_available_slot
