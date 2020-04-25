class Post

  attr_accessor :title, :author
  
  @@all_posts = []
  
  def self.all_posts
    return @@all_posts
  end
  def initialize(title)
    @title = title
  end

  def author_name
    if @author == nil
      return nil
    else
      @author.name
    end
  end
end