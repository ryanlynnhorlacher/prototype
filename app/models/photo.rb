class Photo < ApplicationRecord
	has_many :sections, through: :section_photo_mapping
end
