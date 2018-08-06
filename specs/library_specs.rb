require('minitest/autorun')
require ('minitest/rg')
require_relative('../library.rb')


class LibraryTest < MiniTest::Test

  def setup

    @book1 = {
      title: "lord_of_the_rings",
      rental_details: {
        student_name: "Jeff",
        date: "01/12/18"
      }
    }
    @book2 = {
      title: "harry_potter",
      rental_details: {
        student_name: "Jeff",
        date: "01/12/18"
      }
    }
    @book3 = {
      title: "hitchhikers_guide_to_the_galaxy",
      rental_details: {
        student_name: "Jim",
        date: "31/11/18"
      }
    }

    @books = [@book1, @book2, @book3]

    @book_to_be_added = {
      title: "wind_in_the_willows",
      rental_details: {}
    }
    @amended_book3 = {
      title: "hitchhikers_guide_to_the_galaxy",
      rental_details: {
        student_name: "John",
        date: "31/12/18"
      }
    }

  end


  def test_get_books
    library = Library.new(@books)
    assert_equal(@books, library.books)
  end

  def test_get_book_from_title
    library = Library.new(@books)
    assert_equal(@book1, library.get_book_from_title("lord_of_the_rings"))
  end

  def test_get_rental_details_from_title
    library = Library.new(@books)
    assert_equal(@book2[:rental_details], library.get_rental_details_from_title("harry_potter"))
  end

  def test_add_new_book
    library = Library.new(@books)
    library.add_new_book("wind_in_the_willows")
    assert_equal(@book_to_be_added, library.books[3])
  end

  def test_change_rental_details
    library = Library.new(@books)
    library.change_rental_details("hitchhikers_guide_to_the_galaxy", "John", "31/12/18")
    assert_equal(@amended_book3, library.books[2])
  end

end
