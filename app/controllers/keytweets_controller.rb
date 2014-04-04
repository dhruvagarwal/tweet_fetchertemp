require 'twitter'
require 'open-uri'
class KeytweetsController < ApplicationController	
  def index
  end

 def fetcher
  	client = Twitter::REST::Client.new do |config|
		config.consumer_key = 'quggZEzEtmj36RQdyf97sUcNZ'
		config.consumer_secret = '7LNSr7B7LpN2ak1WPV83dmo9J453c2jnRYznqy1GVd2VDzme5p'
		config.access_token = '2416338816-xAVrVBpdtjvStiXoqUHPTHDu1y1sPf7rJ8p0R4z'
		config.access_token_secret = 'GTAI52goIwyoUCKci4l9AimKKaIfCK68J1mGp4wSiDKBL'
	end
  	@keyword=params["keyword"]
  	@keyword=URI::encode(@keyword)
	@tweet=client.search(@keyword).take(10) #, :result_type => "recent").take(20)
  end

  def custompage
  	client = Twitter::REST::Client.new do |config|
		config.consumer_key = 'quggZEzEtmj36RQdyf97sUcNZ'
		config.consumer_secret = '7LNSr7B7LpN2ak1WPV83dmo9J453c2jnRYznqy1GVd2VDzme5p'
		config.access_token = '2416338816-xAVrVBpdtjvStiXoqUHPTHDu1y1sPf7rJ8p0R4z'
		config.access_token_secret = 'GTAI52goIwyoUCKci4l9AimKKaIfCK68J1mGp4wSiDKBL'
	end
	#@id=Integer(params["id"])+1
	@keyword=params["key"]
	@keyword=URI::encode(@keyword)
	@tweet=client.search(@keyword).take(10) #, :result_type => "recent").take(20)
  end
end
