class RenameFbIdToSiteLists < ActiveRecord::Migration
def up
rename_column :site_lists, :fb_id, :facebook_id
end

def down
rename_column :site_lists, :facebook_id, :fb_id
end

end
