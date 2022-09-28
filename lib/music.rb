class Music
	def initialize 
		@musics = []
	end
	def add(music)
		@musics << music
	end
	def list
		@musics
	end 
end