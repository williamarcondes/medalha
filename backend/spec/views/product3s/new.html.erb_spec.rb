require 'rails_helper'

RSpec.describe "product3s/new", type: :view do
  before(:each) do
    assign(:product3, Product3.new(
      :name => "MyString",
      :description => "MyString"
    ))
  end

  it "renders new product3 form" do
    render

    assert_select "form[action=?][method=?]", product3s_path, "post" do

      assert_select "input#product3_name[name=?]", "product3[name]"

      assert_select "input#product3_description[name=?]", "product3[description]"
    end
  end
end
