require 'raindrops'

describe Raindrops do
  subject(:raindrops) { Raindrops.new }

  describe '#conversion' do
    
    data = [['prints the answer to stdout', 3, 'Pling'],
      ['prints the answer to stdout', 5, 'Plang'],
      ['prints the answer to stdout', 7, 'Plong']]
    data.each do |item|
      it item[0] do
        expect { raindrops.conversion(item[1]) }.to output(item[2]).to_stdout
      end
    end

    it 'prints the answer to stdout' do
      expect { raindrops.conversion(15) }.to output('PlingPlang').to_stdout
    end
    it 'prints number if no factors equal 3, 5, or 7' do
      expect { raindrops.conversion(34) }.to output("34").to_stdout
    end
  end
end
