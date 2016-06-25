require 'rails_helper'

RSpec.describe "severity_levels/edit", type: :view do
  before(:each) do
    @severity_level = assign(:severity_level, SeverityLevel.create!(
      :name => "MyString",
      :color => "MyString"
    ))
  end

  it "renders the edit severity_level form" do
    render

    assert_select "form[action=?][method=?]", severity_level_path(@severity_level), "post" do

      assert_select "input#severity_level_name[name=?]", "severity_level[name]"

      assert_select "input#severity_level_color[name=?]", "severity_level[color]"
    end
  end
end
