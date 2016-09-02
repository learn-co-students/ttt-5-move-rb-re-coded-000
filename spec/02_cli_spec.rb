require_relative "../lib/move.rb"

describe './bin/move executing a CLI Application' do
  it 'defines a board variable' do
    allow($stdout).to receive(:puts)
    allow(self).to receive(:gets).and_return("1")
    allow(self).to receive(:move)

    board = get_variable_from_file("./bin/move", "board")

    expect(board).to eq([" ", " ", " ", " ", " ", " ", " ", " ", " "])
  end



  it 'calls move passing the user input' do

    RSpec::Matchers.define :user_input do |x|
      match { |actual| actual == '1' || actual == 1 }
    end

    allow($stdout).to receive(:puts)

    allow(self).to receive(:gets).and_return('1')
    expect(self).to receive(:move).with(anything, user_input, any_args), "Make sure `bin/move` is passing the user input to the `#move` method."

    run_file("./bin/move")
  end


end
