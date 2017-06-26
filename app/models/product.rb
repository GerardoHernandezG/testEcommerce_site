class Product < ApplicationRecord
	has_attached_file :image, styles: {medium:"800x600", thumb:"400x200"}

	validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/

end
