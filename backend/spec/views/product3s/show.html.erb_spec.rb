require 'rails_helper'

RSpec.describe "product3s/show", type: :view do
  before(:each) do
    @product3 = assign(:product3, Product3.create!(
      :name => "Name",
      :description => "Description"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Description/)
  end
end
