class Bottles
	def song()
		verses(99, 0)	
	end

	def verses(from, to)
		from.downto(to).collect { |n| verse(n) }.join("\n")
	end
	
	def verse(n)
		<<-VERSE
#{bottles(n).capitalize} of beer on the wall, #{bottles(n)} of beer.
#{what_to_do(n)}, #{bottles(n-1)} of beer on the wall.
VERSE
	end

	def bottles(n)
		"#{number(n)} #{pluralize('bottle', n)}"
	end

	def what_to_do(n)
		if n == 0
			"Go to the store and buy some more"
		else
			"Take #{n == 1 ? 'it' : 'one'} down and pass it around"
		end
	end

	def number(n)
		if n < 0
			"99"
		elsif n == 0	
			"no more"
		else
			"#{n}"
		end
	end
		
	def pluralize(name, n)
		if n == 1
			name 
		else
			name + "s"
		end
	end
end