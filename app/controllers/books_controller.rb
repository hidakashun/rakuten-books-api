class BooksController < ApplicationController
  def new
  end

  def index
    if params[:keyword].present?#キーワードが入力されたとき
      @books = RakutenWebService::Books::Book.search(title: params[:keyword])
    else#キーワードが入力されなかった時
      redirect_to new_book_path
    end
  end
end