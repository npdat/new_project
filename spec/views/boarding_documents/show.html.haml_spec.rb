require 'rails_helper'

RSpec.describe "boarding_documents/show", type: :view do
  before(:each) do
    @boarding_document = assign(:boarding_document, BoardingDocument.create!(
      :name => "Name",
      :gender => false,
      :position => "Position",
      :birthday_place => "Birthday Place",
      :passport => "Passport",
      :nationality => "Nationality",
      :flight_ticket => "MyText",
      :is_flight => false,
      :status_id => 1,
      :create_by => 2,
      :remark => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/Position/)
    expect(rendered).to match(/Birthday Place/)
    expect(rendered).to match(/Passport/)
    expect(rendered).to match(/Nationality/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/1/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/MyText/)
  end
end
