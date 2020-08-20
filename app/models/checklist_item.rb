# frozen_string_literal: true

class ChecklistItem < ApplicationRecord
  belongs_to :checklist
end
