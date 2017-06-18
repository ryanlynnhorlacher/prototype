class Section < ApplicationRecord
	has_many :photos, through: :section_photo_mapping
	has_many :pages, through: :page_section_mapping
	has_many :lists, through: :section_list_mapping
end
