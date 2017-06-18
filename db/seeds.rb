require 'faker'

pages_array = ["home", "about", "contact", "services", "gallery"]
sections_array = ["Tools", "Happy People", "The biggest customers", "Concrete!", 
	"Fun, fun, fun!"]
photos_array = ["steel picture", "pipe picture", "drywall picture", "hammer picture"]
photos_url_array = [
	"https://www.atlanticstainless.com/wp-content/uploads/2013/06/Round-Bar-Stainless-Steel.jpg",
	"https://www.investors.com/wp-content/uploads/2016/10/Biz08-steel-102016-adobe-640x360.jpg",
	"https://www.ipwatchdog.com/wp-content/uploads/2017/05/296-1220103153r2OB.jpg",
	"https://www.dlsweb.rmit.edu.au/toolbox/electrotech/toolbox1204/resources/03workshop/05hand_tools/images/mash_hammer.jpg"
]

services_array = ["plumbing", "drywall", "electric", "carpeting", "clean out"]

category_array = ["first", "second", "third", "fourth", "fifth"]

list_array = ["Ryan's Future Kids", "The Bradys", "The Jackson 5", "Mom's 8th Graders"]

page_ids_array = []
section_ids_array = []
photo_ids_array = []
list_ids_array = []

pages_array.each do |page|
	new_page = Page.create(
		page_title: page, 
		header: "this is the #{page} page", 
		sub_header: "This is a big page. One of the best pages. 
			If you saw this page... Wow. #{page}"
	)

	page_ids_array << new_page.id
end

photos_array.each_with_index do |photo, i|
	new_photo = Photo.create(title: photo, caption: photos_url_array[i])
	photo_ids_array << new_photo.id
end

sections_array.each do |section|
	new_section = Section.create(section_title: section, category: category_array.sample, paragraph_text: Faker::Lorem.paragraph)
	section_ids_array << new_section.id
end

services_array.each do |service|
	Service.create(service_title: service)
end

list_array.each do |family|
	new_list = List.create(list_title: family)
	5.times do
		ListItem.create(item: Faker::Name.name, rank: [1..5].sample, list_id: new_list.id)
	end
	list_ids_array << new_list.id
end

[1..10].each do
	PageSectionMapping.create(page_id: page_ids_array.sample, section_id: section_ids_array.sample)
	SectionPhotoMapping.create(section_id: section_ids_array.sample, photo_id: photo_ids_array.sample, rank: [1..10].sample)
	SectionListMapping.create(section_id: section_ids_array.sample, list_id: list_ids_array.sample)
end




