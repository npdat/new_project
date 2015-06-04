require 'rails_helper'

RSpec.describe "boarding_documents/index", type: :view do
  before(:each) do
    assign(:boarding_documents, [
      BoardingDocument.create!(
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
      ),
      BoardingDocument.create!(
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
      )
    ])
  end

  it "renders a list of boarding_documents" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => "Position".to_s, :count => 2
    assert_select "tr>td", :text => "Birthday Place".to_s, :count => 2
    assert_select "tr>td", :text => "Passport".to_s, :count => 2
    assert_select "tr>td", :text => "Nationality".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
