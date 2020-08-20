# frozen_string_literal: true

class Checklist < ApplicationRecord
  belongs_to :page
  has_many :checklist_items, dependent: :destroy

  def new_item
    checklist_items.build
  end
end
