class RapidapiController < ApplicationController
    require 'uri'
    require 'net/http'
  
    def fetch_players
      url = URI("https://free-nba.p.rapidapi.com/players?page=0&per_page=25")
  
      http = Net::HTTP.new(url.host, url.port)
      http.use_ssl = true
  
      request = Net::HTTP::Get.new(url)
      request["X-RapidAPI-Key"] = 'eeb9489d25mshece0af3a05356c5p19ff4djsn50c7693cf960'
      request["X-RapidAPI-Host"] = 'free-nba.p.rapidapi.com'
  
      response = http.request(request)
  
      if response.code.to_i == 200
        players_data = JSON.parse(response.body)
        render json: players_data
      else
        render json: { error: "Failed to fetch NBA players", status: response.code.to_i, message: response.message }
      end
    end
  end
  