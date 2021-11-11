require 'open-uri'
require_relative 'timeslot'

class ScrapeTimeSlotsService
  def initialize(slot)
    @slot = slot
  end

  def call
    html = open("http://www.marmiton.org/recettes/recherche.aspx?aqt=#{@ingredient}").read
    sandra = File.read(URI.open('https://github.com/Workelo/workelo-test/blob/master/test%231/input_sandra.json'))
    andy = File.read(URI.open('https://github.com/Workelo/workelo-test/blob/master/test%231/input_sandra.json'))

    # 1. Parse json
    doc = Nokogiri::HTML(html, nil, "utf-8")
    # 2. For the first five results
    results = []
    doc.search(".recipe-card").first(5).each do |element|
      # 3. Create recipe and store it in results
      name = element.search('.recipe-card__title').text.strip
      description = element.search('.recipe-card__description').text.strip
      prep_time = element.search('.recipe-card__duration__value').text.strip
      results << Recipe.new(name: name, description: description, prep_time: prep_time)
    end
    return results
  end
end

service = CompareCalendarsService.new(sandra, andy)
service.find_available_slot
