# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'notebooks/edit', type: :view do
  before(:each) do
    @notebook = assign(:notebook, Notebook.create!(
                                    title: 'MyString',
                                    user:  nil
                                  ))
  end

  it 'renders the edit notebook form' do
    render

    assert_select 'form[action=?][method=?]', notebook_path(@notebook), 'post' do
      assert_select 'input[name=?]', 'notebook[title]'

      assert_select 'input[name=?]', 'notebook[user_id]'
    end
  end
end
