# frozen_string_literal: true

json.array! @paragraphs, partial: 'paragraphs/paragraph', as: :paragraph
