require 'json'

class SiteLists < ActiveRecord::Base


def getFbTimeLine(access_token,fd_id)

	graph = Koala::Facebook::GraphAPI.new(access_token);
	datas = graph.get_object(fd_id << '/feed')
	return datas
end

end
