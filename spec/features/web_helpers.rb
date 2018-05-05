def sign_in_and_play
  visit('/')
  fill_in 'player1', with: 'Bar'
  fill_in 'player2', with: 'Ken'
  click_button 'SET IT OFF!'
end
