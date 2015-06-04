require 'rails_helper'

RSpec.describe "boarding_documents/edit", type: :view do
  before(:each) do
    @boarding_document = assign(:boarding_document, BoardingDocument.create!(
      :name => "MyString",
      :gender => false,
      :position => "MyString",
      :birthday_place => "MyString",
      :passport => "MyString",
      :nationality => "MyString",
      :flight_ticket => "MyText",
      :is_flight => false,
      :status_id => 1,
      :create_by => 1,
      :remark => "MyText"
    ))
  end

  it "renders the edit boarding_document form" do
    render

    assert_select "form[action=?][method=?]", boarding_document_path(@boarding_document), "post" do

      assert_select "input#boarding_document_name[name=?]", "boarding_document[name]"

      assert_select "input#boarding_document_gender[name=?]", "boarding_document[gender]"

      assert_select "input#boarding_document_position[name=?]", "boarding_document[position]"

      assert_select "input#boarding_document_birthday_place[name=?]", "boarding_document[birthday_place]"

      assert_select "input#boarding_document_passport[name=?]", "boarding_document[passport]"

      assert_select "input#boarding_document_nationality[name=?]", "boarding_document[nationality]"

      assert_select "textarea#boarding_document_flight_ticket[name=?]", "boarding_document[flight_ticket]"

      assert_select "input#boarding_document_is_flight[name=?]", "boarding_document[is_flight]"

      assert_select "input#boarding_document_status_id[name=?]", "boarding_document[status_id]"

      assert_select "input#boarding_document_create_by[name=?]", "boarding_document[create_by]"

      assert_select "textarea#boarding_document_remark[name=?]", "boarding_document[remark]"
    end
  end
end
