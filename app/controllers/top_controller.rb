
require 'json'

class TopController < ApplicationController


def insert
	access_token = Facebook::APP_TOKEN
 	graph = Koala::Facebook::GraphAPI.new(access_token)
	lists = SiteLists.all

	site = SiteLists.new
	
	i=0
	lists.each do |list|
		datas = site.getFbTimeLine(access_token,list['facebook_id'])
		datas.each do |data|
			SiteLogs.find_or_create_by(facebook_id: data['id']) do |log|
				log.site_list_id = lists[lists.each_with_index]['id']
				log.facebook_id = data['id']
				log.photo = data['picture']
				log.text = data['message']
				log.url = getFbUrl + data['id']
				log.post_date = data['created_time']
				i += 1
			end
		end
	end
	puts i
end

def list

	log = SiteLogs.new
	logs = log.getLog.to_json
	render :json => logs	
end

  private

def getFbUrl
	return 'http://facebook.com/'
end

end
