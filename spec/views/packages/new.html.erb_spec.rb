require 'rails_helper'

RSpec.describe "packages/new", type: :view do
  before(:each) do
    assign(:package, Package.new(
      :office => nil
    ))
  end

  it "renders new package form" do
    render

    assert_select "form[action=?][method=?]", packages_path, "post" do

      assert_select "input#package_office_id[name=?]", "package[office_id]"
    end
  end
end
