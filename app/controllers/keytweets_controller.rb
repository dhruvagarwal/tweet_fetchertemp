require 'twitter'
require 'open-uri'
class KeytweetsController < ApplicationController	
  def index
  end

  def fetcher
  	client = Twitter::REST::Client.new do |config|
		config.consumer_key = ''
		config.consumer_secret = ''
		config.access_token = ''
		config.access_token_secret = ''
	end
  	@keyword=params["keyword"]
  	@keyword=URI::encode(@keyword)
	@tweet=client.search(@keyword).take(10) #, :result_type => "recent").take(20)
  end

  def custompage
  	client = Twitter::REST::Client.new do |config|
		config.consumer_key = ''
		config.consumer_secret = ''
		config.access_token = ''
		config.access_token_secret = ''
	end
	#@id=Integer(params["id"])+1
	@keyword=params["key"]
	@keyword=URI::encode(@keyword)
	@tweet=client.search(@keyword).take(10) #, :result_type => "recent").take(20)
  end
end
