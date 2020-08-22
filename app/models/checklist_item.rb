# frozen_string_literal: true

class ChecklistItem < ApplicationRecord
  belongs_to :checklist

  validates :status, inclusion: { in: %w[not-started in-progress complete] }
  validates :status, presence: true

  STATUS_OPTIONS = [
    ['Not started', 'not-started'],
    ['In progress', 'in-progress'],
    %w[Complete complete]
  ].freeze

  def color_class
    case status
    when 'not-started'
      'secondary'
    when 'in-progress'
      'primary'
    when 'complete'
      'dark'
    end
  end

  def readable_status
    case status
    when 'not-started'
      'Not started'
    when 'in-progress'
      'In progress'
    when 'complete'
      'Complete'
    end
  end

  def complete?
    status == 'complete'
  end

  def in_progress?
    status == 'in-progress'
  end
end
