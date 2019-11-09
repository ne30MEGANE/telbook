module ApplicationHelper
  def page_title
	  title = "Telphone Book"
		title = @page_title + " - " + title if @page_title
		title
	end	
end
