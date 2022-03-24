# frozen_string_literal: true

class CreateBooks < ActiveRecord::Migration[6.1]
  def change
    create_table :books do |t|
      t.string :author
      t.string :title
      t.references :user, null: false, foreign_key: true
      t.date :publish_year

      t.timestamps
    end
  end
end
