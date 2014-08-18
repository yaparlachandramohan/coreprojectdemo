class Devicedetail < ActiveRecord::Base

  attr_accessible :deviceno, :customer_name, :nearimage, :nearimage_url,  
                  :intermediateimage, :intermediateimage_url, :farimage, :farimage_url, 
                  :minor_id, :major_id   

  has_attached_file :nearimage, :storage => :s3, :s3_credentials => "#{Rails.root}/config/s3.yml", :path => ":attachment/:id/:style.:extension", :bucket => 'auxiribeacons'
  
  has_attached_file :intermediateimage, :storage => :s3, :s3_credentials => "#{Rails.root}/config/s3.yml", :path => ":attachment/:id/:style.:extension", :bucket => 'auxiribeacons'
  
  has_attached_file :farimage, :storage => :s3, :s3_credentials => "#{Rails.root}/config/s3.yml", :path => ":attachment/:id/:style.:extension", :bucket => 'auxiribeacons'
  
  validates_attachment_content_type :nearimage, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]
  
  validates_attachment_content_type :intermediateimage, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]
  
  validates_attachment_content_type :farimage, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]
  
end
