feature 'Attacking players' do

  scenario 'displaying player1 attack confirmation' do
    sign_in_and_play
    click_button 'Player 1 Attack!'
    expect(page).to have_content('Powerful attack Bar!')
  end

  scenario 'displaying player2 point reduced by 10' do
    sign_in_and_play
    click_button 'Player 1 Attack!'
    expect(page).not_to have_content('Ken hit points: 60HP')
    expect(page).to have_content('Ken hit points: 50HP')
  end

end
