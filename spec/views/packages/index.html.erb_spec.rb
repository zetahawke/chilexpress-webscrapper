require 'rails_helper'

RSpec.describe "packages/index", type: :view do
  before(:each) do
    assign(:packages, [
      Package.create!(
        :office => nil
      ),
      Package.create!(
        :office => nil
      )
    ])
  end

  it "renders a list of packages" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
