class BooksController < ApplicationController
  def show
    @books = Book.all
    @user_books = @user.books
  end

  def update
  end
end
