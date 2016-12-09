require 'rails_helper'

RSpec.describe "product3s/edit", type: :view do
  before(:each) do
    @product3 = assign(:product3, Product3.create!(
      :name => "MyString",
      :description => "MyString"
    ))
  end

  it "renders the edit product3 form" do
    render

    assert_select "form[action=?][method=?]", product3_path(@product3), "post" do

      assert_select "input#product3_name[name=?]", "product3[name]"

      assert_select "input#product3_description[name=?]", "product3[description]"
    end
  end
end
