require 'twitter'
class TweetsController < ApplicationController
  def index
  	client = Twitter::REST::Client.new do |config|
		config.consumer_key = ''
		config.consumer_secret = ''
		config.access_token = ''
		config.access_token_secret = ''
	end
	@keyword="watching"
	@tweet=client.search(@keyword).take(100) #, :result_type => "recent").take(20)
  	@some_var=["connect to twitter","change controller","fetch results","store it in a db","display with lazy load"]
  end
end
