class Post

  attr_accessor :title, :author
  def author(a)
    @author = a
  end
  def author
    return @author
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