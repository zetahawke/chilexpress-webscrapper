require 'rails_helper'

RSpec.describe "offices/new", type: :view do
  before(:each) do
    assign(:office, Office.new(
      :company => nil
    ))
  end

  it "renders new office form" do
    render

    assert_select "form[action=?][method=?]", offices_path, "post" do

      assert_select "input#office_company_id[name=?]", "office[company_id]"
    end
  end
end
