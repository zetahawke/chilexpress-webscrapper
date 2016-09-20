require 'rails_helper'

RSpec.describe "offices/show", type: :view do
  before(:each) do
    @office = assign(:office, Office.create!(
      :company => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
  end
end
