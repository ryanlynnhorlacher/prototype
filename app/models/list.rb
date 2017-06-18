class List < ApplicationRecord
	has_many :sections, through: :section_list_mapping
	has_many :list_items
end
