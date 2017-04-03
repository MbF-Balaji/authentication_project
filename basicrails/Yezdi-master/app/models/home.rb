class Home < ApplicationRecord
	has_attached_file :image
    has_attached_file :covers, styles: { small: "64x64", med: "100x100", large: "200x200" }
    validates_attachment :image, styles: {large: "200x200" }

    validates_attachment_content_type :image, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]

    validates_length_of :content, :maximum => 500
    validates_length_of :title, :maximum => 100
end