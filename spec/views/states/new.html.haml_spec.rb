require 'rails_helper'

RSpec.describe "states/new", type: :view do
  before(:each) do
    assign(:state, State.new(
      :status => "MyString",
      :remark => "MyText"
    ))
  end

  it "renders new state form" do
    render

    assert_select "form[action=?][method=?]", states_path, "post" do

      assert_select "input#state_status[name=?]", "state[status]"

      assert_select "textarea#state_remark[name=?]", "state[remark]"
    end
  end
end
