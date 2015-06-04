require 'rails_helper'

RSpec.describe "states/index", type: :view do
  before(:each) do
    assign(:states, [
      State.create!(
        :status => "Status",
        :remark => "MyText"
      ),
      State.create!(
        :status => "Status",
        :remark => "MyText"
      )
    ])
  end

  it "renders a list of states" do
    render
    assert_select "tr>td", :text => "Status".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
