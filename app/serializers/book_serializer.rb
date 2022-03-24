# frozen_string_literal: true

class BookSerializer < ActiveModel::Serializer
  attributes :id, :author, :title, :user, :publish_year, :email

  def user
    {
      id: object.user.id,
      email: object.user.email
    }
  end
end
