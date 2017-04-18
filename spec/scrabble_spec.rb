require('rspec')
require('scrabble')

describe('String#scrabble') do
  it('returns a scrabble score for a letter') do
    expect("k".scrabble()).to(eq(5))
  end
end
