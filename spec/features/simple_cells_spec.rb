require "rails_helper"

describe SimpleCells do
  let(:user) { create :user }

  it "renders a cell" do
    visit user_path(user)
    expect(page).to have_http_status(:success)

    puts page.html
  end
end
