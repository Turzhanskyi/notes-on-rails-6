# frozen_string_literal: true

class Notebook < ApplicationRecord
  belongs_to :user
  has_many :pages, dependent: :destroy

  def page_position
    if pages.none?(&:persisted?)
      1
    else
      pages.order(position: :asc).last.position + 1
    end
  end
end
