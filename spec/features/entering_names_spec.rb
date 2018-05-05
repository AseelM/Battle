feature 'Entering names' do
  scenario 'Sumbitting names' do
    sign_in_and_play
    expect(page).to have_content('Bar vs. Ken')
  end
end
