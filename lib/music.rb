class Music
	def initialize 
		@musics = []
	end
	def add(music)
		@musics << music
	end
	def view
		@musics
	end 
end