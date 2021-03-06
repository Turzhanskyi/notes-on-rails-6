# frozen_string_literal: true

class Paragraph < ApplicationRecord
  belongs_to :page
  has_rich_text :content
end
