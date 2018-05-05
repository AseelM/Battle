feature 'Viewing hit points' do
  scenario 'Displaying player2 hit points' do
    sign_in_and_play
    expect(page).to have_content('Ken hit points: 60HP')
  end
end
