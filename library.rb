class Library

  attr_reader(:books)

  def initialize(books)
    @books = books
  end

  # def books()
  #   return @books
  # end

  def get_book_by_title(title)
    for book in @books
      return book if book[:title] == title
    end
    return
  end

end
