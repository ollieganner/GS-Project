def grammar(text)
	punct = ['.','!','?']
	upper = ('A'..'Z').to_a
	if upper.include?(text[0]) && punct.include?(text[-1])
		return true
	elsif upper.include?(text[0])
		fail "No punctuation."
	elsif punct.include?(text[-1])
		fail "No capital."
	else
		fail "Require capital and punctuation."
	end
end 