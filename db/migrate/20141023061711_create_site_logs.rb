class CreateSiteLogs < ActiveRecord::Migration
  def change
    create_table :site_logs do |t|
     	t.integer :site_list_id
	t.string :facebook_id
	t.string :photo
	t.string :url
	t.text :text
	t.date :post_date
        t.integer :aliev_flg, :null =>false, :default =>0
	t.timestamps
    end
  end
end
