class Post

  attr_accessor :title
  
  @@all = []
  def author=(author)
    @author = author
    author.posts << self
  end
  def author
    @author
  end
  def self.all_posts
    return @@all_posts
  end
  def initialize(title)
    @title = title
    @@all << self
    Author.post_count +=1
  end

  def author_name
    if @author == nil
      return nil
    else
      @author.name
    end
  end
end