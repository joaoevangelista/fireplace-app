require 'rails_helper'

RSpec.describe "severity_levels/show", type: :view do
  before(:each) do
    @severity_level = assign(:severity_level, SeverityLevel.create!(
      :name => "Name",
      :color => "Color"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Color/)
  end
end
