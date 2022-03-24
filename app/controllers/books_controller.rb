# frozen_string_literal: true

class BooksController < ApplicationController
  def index
    books = Book.all
    render json: {
      data: ActiveModelSerializers::SerializableResource.new(books, each_serializer: BookSerializer),
      message: ['Book list fetched successfully'],
      status: 200,
      type: 'Success'
    }
  end
end
