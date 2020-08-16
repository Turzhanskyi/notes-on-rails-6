# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'notebooks/index', type: :view do
  before(:each) do
    assign(:notebooks, [
             Notebook.create!(
               title: 'Title',
               user:  nil
             ),
             Notebook.create!(
               title: 'Title',
               user:  nil
             )
           ])
  end

  it 'renders a list of notebooks' do
    render
    assert_select 'tr>td', text: 'Title'.to_s, count: 2
    assert_select 'tr>td', text: nil.to_s, count: 2
  end
end
