class Attachment < ActiveRecord::Base
  attr_accessible :title, :file

  has_attached_file :file
  validates_attachment_content_type :file, content_type: /\Aimage\/.*\z/
end
