feature 'losing the game' do
  scenario 'player2 loses game' do
    sign_in_and_play
    10.times { attack_and_switch }
    click_button('Attack!')
    expect(page).to have_content('Ken lost the game!')
    expect(page).to have_no_button('Switch!')
  end
end
