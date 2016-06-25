require 'rails_helper'

RSpec.describe "severity_levels/new", type: :view do
  before(:each) do
    assign(:severity_level, SeverityLevel.new(
      :name => "MyString",
      :color => "MyString"
    ))
  end

  it "renders new severity_level form" do
    render

    assert_select "form[action=?][method=?]", severity_levels_path, "post" do

      assert_select "input#severity_level_name[name=?]", "severity_level[name]"

      assert_select "input#severity_level_color[name=?]", "severity_level[color]"
    end
  end
end
