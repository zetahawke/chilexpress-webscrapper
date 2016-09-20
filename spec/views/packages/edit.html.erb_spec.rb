require 'rails_helper'

RSpec.describe "packages/edit", type: :view do
  before(:each) do
    @package = assign(:package, Package.create!(
      :office => nil
    ))
  end

  it "renders the edit package form" do
    render

    assert_select "form[action=?][method=?]", package_path(@package), "post" do

      assert_select "input#package_office_id[name=?]", "package[office_id]"
    end
  end
end
