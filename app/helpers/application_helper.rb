module ApplicationHelper
        git_path = "https://github.com/saipanindra/homebuddy	"
	def full_title(page_heading)
		base_title = "Home Buddy"
		if page_heading.empty?
			base_title
		else
			"#{base_title} | #{page_heading}"
		end
	end
end
