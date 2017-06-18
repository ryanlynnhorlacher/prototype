class PageSectionMapping < ApplicationRecord
	belongs_to :page
	belongs_to :section
end
