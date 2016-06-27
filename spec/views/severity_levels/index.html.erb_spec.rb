# frozen_string_literal: true
require 'rails_helper'

RSpec.describe 'severity_levels/index', type: :view do
  login_user
  before(:each) do
    assign(:severity_levels, Kaminari.paginate_array([
                                                       SeverityLevel.create!(
                                                         name: 'Name',
                                                         color: '#ffffff'
                                                       ),
                                                       SeverityLevel.create!(
                                                         name: 'Name',
                                                         color: '#ffffff'
                                                       )
                                                     ]).page(1))
  end

  it 'renders a list of severity_levels' do
    render
  end
end
