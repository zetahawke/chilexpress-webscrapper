require 'rails_helper'

RSpec.describe "offices/edit", type: :view do
  before(:each) do
    @office = assign(:office, Office.create!(
      :company => nil
    ))
  end

  it "renders the edit office form" do
    render

    assert_select "form[action=?][method=?]", office_path(@office), "post" do

      assert_select "input#office_company_id[name=?]", "office[company_id]"
    end
  end
end
