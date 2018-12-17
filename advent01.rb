require "rspec"

def solve_first( test_data )
	return test_data.reduce(:+)
end

def solve_second( test_data )
	frequency = 0
	frequencies = [0]
	dupe = false

	while dupe == false do
		test_data.each do |num|
			frequency += num

			if frequencies.include?( frequency )
				dupe = true
				break
			end

			frequencies.push( frequency )
		end
	end

	return frequency
end

RSpec.describe do 

	it "solve_second" do
		expect( solve_second( [1,-1]) ).to eq( 0 )
		expect( solve_second( [3, 3, 4, -2, -4] ) ).to eq( 10 )
		expect( solve_second( [-6, 3, 8, 5, -6] ) ).to eq( 5 )
		expect( solve_second( [7, 7, -2, -7, -4] ) ).to eq( 14 )
	end

end