require 'net/http'
require 'open-uri'
require 'json'

url = "https://api.covid19api.com/summary" 
uri = URI.parse(url)
response = Net::HTTP.get_response(uri)
data = JSON.parse(response.body)

puts data

data["Countries"].each do |c|
    c1 = Country.create!(name: c["Country"])
    Case.create!(country_id: c1.id, total: c["TotalConfirmed"], recovered: c[ "TotalRecovered"])
end

# ----------------------- Another way to do the same thing ---------------------
require 'httparty'
response = HTTParty.get(url)
response["Countries"].each do |c|
    c1 = Country.create(name: c["Country"])
    Case.create(country_id: c1.id, total: c["TotalConfirmed"], recovered: c[ "TotalRecovered"])
end