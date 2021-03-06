require 'csv'
require 'chronic'

namespace :db do
  desc "Add NFL schedule to database"
  task load_nfl_schedule: :environment do 
    csv = File.read('nfl_schedule.csv')
    nfl_schedule = CSV.parse(csv, headers: true)
    nfl_schedule.each do |game|
      event = Event.create(name: "#{game[0]} at #{game[1]}", date: Chronic.parse("#{game[2]}"))
      search_term = SearchTerm.create(hashtag: "\##{game[0]}")
      event.search_terms << search_term
      search_term.events << event
      event.save
      search_term.save
    end
  end
end
