class Homework < ActiveRecord::Base
  validates :document, presence: true

  has_attached_file :document, styles: { :medium => "640x" }
  validates_attachment :document, :content_type => {:content_type => %w(image/jpeg image/jpg image/png application/pdf application/msword application/vnd.openxmlformats-officedocument.wordprocessingml.document)}
end
