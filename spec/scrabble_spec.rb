require('rspec')
require('descriptive_statistics')
require('scrabble')

describe('String#scrabble') do
  it('returns a scrabble score for a letter not in an array') do
    expect("k".scrabble()).to(eq(5))
  end

  it('returns a scrabble score for a letter in an array') do
    expect("a".scrabble()).to(eq(1))
  end
  it('returns a scrabble score for multiple letters in an word') do
    expect("abCzx".scrabble()).to(eq(25))
  end
end
