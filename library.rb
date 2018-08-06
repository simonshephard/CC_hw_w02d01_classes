class Library

  attr_reader(:books)

  def initialize(books)
    @books = books
  end

  # get_books method without using attr_reader
  # def books()
  #   return @books
  # end

  def get_book_from_title(title)
    for book in @books
      return book if book[:title] == title
    end
    return
  end

  def get_rental_details_from_title(title)
    book = get_book_from_title(title)
    return book[:rental_details]
  end

  def add_new_book(title)
    new_book = {}
    new_book[:title] = title
    new_book[:rental_details] = {}
    @books << new_book
  end

  def change_rental_details(title, new_student_name, new_date)
    book = get_book_from_title(title)
    book[:rental_details][:student_name] = new_student_name
    book[:rental_details][:date] = new_date
  end

end
