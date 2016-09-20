require 'rails_helper'

RSpec.describe "offices/index", type: :view do
  before(:each) do
    assign(:offices, [
      Office.create!(
        :company => nil
      ),
      Office.create!(
        :company => nil
      )
    ])
  end

  it "renders a list of offices" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
