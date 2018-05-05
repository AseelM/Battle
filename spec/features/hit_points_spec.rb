feature 'Viewing hit points' do
  scenario 'Displaying player2 hit points' do
    visit('/')
    fill_in 'player1', with: 'Bar'
    fill_in 'player2', with: 'Ken'
    click_button 'SET IT OFF!'
    expect(page).to have_content('Ken hit points: 60HP')
  end
end
