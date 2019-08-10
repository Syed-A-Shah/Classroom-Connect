class Homework < ApplicationRecord
    has_attached_file :hw

    has_attached_file :hw, styles: { :medium => "640x" }
    validates_attachment_content_type :hw, :content_type => /\Aimage\/.*\Z/
end
