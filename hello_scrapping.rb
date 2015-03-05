# Instalar mechanize
# gem install mechanize

require 'mechanize'

agent = Mechanize.new

# Lista de asistentes al Ruby meetup Baq.
url = 'http://www.meetup.com/quillarb/events/220173120/'
page = agent.get(url)
parsed_page = page.parser
parsed_page.css('#rsvp-list h5 a').each do |member_info|
  puts "#{member_info.text} (#{member_info[:href]})"
end