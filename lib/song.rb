# Song
#   #new
#     is initialized with an argument of a name (FAILED - 19)
#     pushes new instances into a class variable called @@all upon initialization
#   @@all
#     is a class variable set to an array
#   .all
#     is a class method that returns an array of all song instances that have been created (FAILED - 20)
#   #name
#     has a name
#   #artist
#     belongs to an artist (FAILED - 21)
#   #artist_name
#     knows the name of its artist (FAILED - 22)
#     returns nil if the song does not have an artist (FAILED - 23)

class Song

  attr_accessor :name, :artist

  @@all = []              # @@all - is a class variable set to an array

  def initialize(name)    # #new - is initialized with an argument of a name
    @name = name          #      - pushes new instances into a class variable called @@all upon initialization
    @@all << self
  end

  def self.all            # @@all - is a class variable set to an array
    @@all
  end

  def artist
    @artist
  end

  def artist_name
    artist.name unless artist.nil?
  end

end
