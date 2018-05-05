feature 'Attacking players' do
  scenario 'displaying player1 attack confirmation' do
    sign_in_and_play
    click_button 'Player 1 Attack!'
    expect(page).to have_content('Powerful attack Bar!')
  end
end
