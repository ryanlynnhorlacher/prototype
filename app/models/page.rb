class Page < ApplicationRecord
	has_many :sections, through: :page_section_mapping
end
