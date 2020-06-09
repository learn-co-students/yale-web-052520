Country.destroy_all
Case.destroy_all

# require 'net/http'
# require 'open-uri'

url = "https://api.covid19api.com/summary"

# uri = URI.parse(url)

# response = Net::HTTP.get_response(uri)
# data = JSON.parse(response.body) # JSON is frm json gem

data = HTTParty.get(url)

data["Countries"].each do |country|
    # c1 = Country.create(name: country[:Country])
    # Case.create(country_id: c1.id , total: country[:TotalConfirmed] , recovered: country[:TotalRecovered] )

    c1 = Country.create(name: country["Country"])
    Case.create(country_id: c1.id , total: country["TotalConfirmed"] , recovered: country["TotalRecovered"] )

end


# binding.pry
# 0