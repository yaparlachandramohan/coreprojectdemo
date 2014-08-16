class CreateDevicedetails < ActiveRecord::Migration
  def self.up
    create_table :devicedetails do |t|
      t.string   :deviceno
      t.string   :customer_name
      t.attachment :nearimage
      t.string     :nearimage_url
      t.attachment :intermediateimage
      t.string     :intermediateimage_url
      t.attachment :farimage
      t.string     :farimage_url    
      t.timestamps
    end
  end
  
  def self.down
    drop_table :devicedetails
  end
end
