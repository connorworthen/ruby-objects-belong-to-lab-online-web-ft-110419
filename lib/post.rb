class Post
  attr_accessor :title, :author, :name
  def initiative(title)
    @title = title
  end

  def author
    @author = author
  end

  def name(author)
    @name = name
    @author << @name
  end


end
