# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'notebooks/show', type: :view do
  before(:each) do
    @notebook = assign(:notebook, Notebook.create!(
                                    title: 'Title',
                                    user:  nil
                                  ))
  end

  it 'renders attributes in <p>' do
    render
    expect(rendered).to match(/Title/)
    expect(rendered).to match(//)
  end
end
