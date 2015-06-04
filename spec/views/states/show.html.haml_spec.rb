require 'rails_helper'

RSpec.describe "states/show", type: :view do
  before(:each) do
    @state = assign(:state, State.create!(
      :status => "Status",
      :remark => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Status/)
    expect(rendered).to match(/MyText/)
  end
end
