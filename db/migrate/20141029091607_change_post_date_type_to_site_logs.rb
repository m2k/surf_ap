class ChangePostDateTypeToSiteLogs < ActiveRecord::Migration
  def self.up
    change_column :site_logs, :post_date, :datetime
  end

  def self.down
    change_column :site_logs, :post_date, :date
  end

end
