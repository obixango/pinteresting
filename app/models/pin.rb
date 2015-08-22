class Pin < ActiveRecord::Base
  belongs_to :user
  
  has_attached_file :image, :styles => { :medium => "300x300>", :thumb => "100x100>" }
  validates_attachment_content_type :image, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]
  
  attr_accessor :photo_file_name
  attr_accessor :photo_content_type
  attr_accessor :photo_file_size
  attr_accessor :photo_updated_at

end
