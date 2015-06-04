require 'rails_helper'

RSpec.describe "states/edit", type: :view do
  before(:each) do
    @state = assign(:state, State.create!(
      :status => "MyString",
      :remark => "MyText"
    ))
  end

  it "renders the edit state form" do
    render

    assert_select "form[action=?][method=?]", state_path(@state), "post" do

      assert_select "input#state_status[name=?]", "state[status]"

      assert_select "textarea#state_remark[name=?]", "state[remark]"
    end
  end
end
