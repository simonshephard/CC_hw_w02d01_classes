# Homework Extension: (for those of you who REALLY want extra homework)
# Model a Library as a class.
#
# Create a class for a Library that has an array of books. Each book should be a hash with a title,
# which is a string, and rental details, which is another hash with a student name and due date.
# This should look something like:
#
#   {
#     title: "lord_of_the_rings",
#     rental_details: {
#      student_name: "Jeff",
#      date: "01/12/16"
#     }
#   }
# Create a getter for the books
# Create a method that takes in a book title and returns all of the information about that book.
# Create a method that takes in a book title and returns only the rental details for that book.
# Create a method that takes in a book title and adds it to our book list
# (add a new hash for the book with the student name and date being left as empty strings)
# Create a method that changes the rental details of a book by taking in the title of the book,
# the student renting it and the date it's due to be returned.

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

  end

  def test_get_books
    library = Library.new(@books)
    assert_equal(@books, library.books)
  end

  def test_get_book_from_title
    library = Library.new(@books)
    assert_equal(@book1, library.get_book_by_title("lord_of_the_rings"))
    #assert_equal("lord_of_the_rings", Library.books[1][:title])
  end


end
