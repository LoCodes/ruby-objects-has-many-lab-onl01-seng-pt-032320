# Post
#   #new
#     is initialized with an argument of a title (FAILED - 11)
#     pushes new instances into a class variable called @@all upon initialization (FAILED - 12)
#   @@all
#     is a class variable set to an array (FAILED - 13)
#   .all
#     is a class method that returns an array of all post instances that have been created (FAILED - 14)
#   #title
#     has a title (FAILED - 15)
#   #author
#     belongs to an author (FAILED - 16)
#   #author_name
#     knows the name of its author (FAILED - 17)
#     returns nil if the post does not have an author (FAILED - 18)

class Post
  attr_accessor :title, :author  #  has a title, belongs to an author,

  @@all = []              # @@all - is a class variable set to an array

  def initialize(title)   # #new - is initialized with an argument of a title
    @title = title        # pushes new instances into a class variable called @@all upon initialization
    @@all << self
  end

  def self.all      #.all - is a class method that returns an array of all post instances that have been created
    @@all
  end

  def author_name
    author.name != nil      #knows the name of its author
  end                     # returns nil if the post does not have an author





end
