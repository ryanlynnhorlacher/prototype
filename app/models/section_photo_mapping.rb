class SectionPhotoMapping < ApplicationRecord
	belongs_to :section
	belongs_to :photo
end
