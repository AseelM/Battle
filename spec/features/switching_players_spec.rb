feature 'switching players' do
  scenario 'player1 turn when starting the game' do
    sign_in_and_play
    expect(page).to have_content('Bar\'s turn')
  end
  scenario 'player2 turn after player1 attacks' do
    sign_in_and_play
    attack_and_switch
    expect(page).to have_content('Ken\'s turn')
    expect(page).not_to have_content('Bar\'s turn')
  end
end
