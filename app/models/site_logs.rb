class SiteLogs < ActiveRecord::Base


def getLog
	SiteLogs.order('post_date DESC')
end

end
