class Homework < ActiveRecord::Base
  validates :document, presence: true

  has_attached_file :document, :styles => { :small  => ["150x150>", :jpg] }
  validates_attachment :document, :content_type => {:content_type => %w(image/jpeg image/jpg image/png application/pdf application/msword application/vnd.openxmlformats-officedocument.wordprocessingml.document)}
end
