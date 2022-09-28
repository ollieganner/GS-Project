def todo(text)
	if text.include?("#TODO")
		return "In list."
	else 
		return "Not in list."
	end
end 