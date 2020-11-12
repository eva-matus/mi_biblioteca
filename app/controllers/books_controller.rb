class BooksController < ApplicationController
    before_action :set_book, only: [:show, :edit, :update, :destroy]

    def index  
        @q = Book.ransack(params[:q])
        @books = @q.result(distinct: true)
    end

    def new
        @book = Book.new
        @statuses = Book.statuses.keys.to_a
    end

    def create
        @book = Book.new(book_params)
        respond_to do |f|
            if @book.save
                f.html { redirect_to root_path, notice: 'Fue creado con éxito'}
            else
                f.html {render :new}
            end
        end
    end

    def show
    end

    def edit
        @statuses = Book.statuses.keys.to_a
    end

    def update
        respond_to do |f|
            if @book.update(book_perams)
                f.html { redirect_to root_path, nitice: 'Loaded with success'}
            else
                f.html {render :edit}
            end
        end
    end

    def destroy
        @book.destroy
        repond_to do |f|
            f.html {redirect_to root_path}
        end
    end

    private

    def set_book
        @book = Book.find(params[:id])
    end

    def book_params
        params.require(:book).permit(:title, :author, :status, :borrowed_at, :returned_at)
        
    end
end

