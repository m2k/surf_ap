class SiteLogs < ActiveRecord::Base


def getLog(page=1,limit=50)
	
	offset = (page.to_i - 1) * limit.to_i
	SiteLogs.limit(limit).offset(offset).order('post_date DESC')
end

end
