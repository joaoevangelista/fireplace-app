# frozen_string_literal: true
require 'rails_helper'

RSpec.describe 'severity_levels/index', type: :view do

  login_user
  before(:each) do


    assign(:severity_levels, [
             SeverityLevel.create!(
               name: 'Name',
               color: 'Color'
             ),
             SeverityLevel.create!(
               name: 'Name',
               color: 'Color'
             )
           ])
  end

  it 'renders a list of severity_levels' do
    render
    assert_select 'tr>td', text: 'Name'.to_s, count: 2
    assert_select 'tr>td', text: 'Color'.to_s, count: 2
  end
end
