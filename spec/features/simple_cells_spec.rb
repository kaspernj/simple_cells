require "rails_helper"

describe SimpleCells do
  let(:user) { create :user }

  before do
    visit user_path(user)
    expect(page).to have_http_status(:success)
  end

  it "renders a cell" do
    first_name = find("#user_first_name")
    expect(first_name.text).to eq user.first_name

    last_name = find("#user_last_name")
    expect(last_name.text).to eq user.last_name
  end

  it "works with the native translation library" do
    translation_missing = find("#translation_test .translation_missing")
    expect(translation_missing[:title]).to eq "translation missing: en.simple_cells.users.show.translation_test"
  end
end
