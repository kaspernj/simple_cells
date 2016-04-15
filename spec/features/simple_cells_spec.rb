require "rails_helper"

describe SimpleCells do
  let(:user) { create :user }

  it "renders a cell" do
    visit user_path(user)
    expect(page).to have_http_status(:success)

    first_name = find("#user_first_name")
    expect(first_name.text).to eq user.first_name

    last_name = find("#user_last_name")
    expect(last_name.text).to eq user.last_name
  end
end
