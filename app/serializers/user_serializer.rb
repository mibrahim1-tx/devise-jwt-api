# frozen_string_literal: true

class UserSerializer < ActiveModel::Serializer
  attributes :id, :email, :book

  def book
    object.books.map do |book|
      {
        id: book.id,
        title: book.title
      }
    end
  end
end
