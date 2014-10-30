class CreateSiteLists < ActiveRecord::Migration
  def change
    create_table :site_lists do |t|
       t.string :fb_id
       t.string :site_name
       t.string :site_photo
       t.string :site_url
       t.integer :aliev_flg, :null =>false, :default =>0
      t.timestamps
    end
  end
end
