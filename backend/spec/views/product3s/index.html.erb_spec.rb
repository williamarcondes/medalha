require 'rails_helper'

RSpec.describe "product3s/index", type: :view do
  before(:each) do
    assign(:product3s, [
      Product3.create!(
        :name => "Name",
        :description => "Description"
      ),
      Product3.create!(
        :name => "Name",
        :description => "Description"
      )
    ])
  end

  it "renders a list of product3s" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Description".to_s, :count => 2
  end
end
