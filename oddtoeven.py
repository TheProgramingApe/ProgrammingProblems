# Odd to Even
# http://practice.geeksforgeeks.org/problems/odd-to-even/0

class OddToEven:
	"""Class that finds the biggest even number 
	 possible by just one swap of its elements OddToEven"""

	def biggest_even(self, number):
		size = len(number)
		last_digit = int(number[-1])

		last_even_index = None

		for i in range(size):
			if int(number[i]) % 2 is 0:
				last_even_index = i
				if last_digit >= int(number[i]):
					return self.swap(number, i, size-1)

		if last_even_index is not None:
			return self.swap(number, last_even_index, size-1)

		return number


	def swap(self, s, pos_x, pos_y):
		#Example : '0987654321' - swap number 8 and 3
		_first_part, first_part_ = 0, pos_x				# '09'
		y_val = s[pos_y]								# '3'
		_middle_part, middle_part_ = pos_x+1, pos_y		# '7654'
		x_val = s[pos_x]								# '8'
		_last_part, last_part_ = pos_y+1, len(s)		# '21'
		return s[ _first_part : first_part_ ] + y_val + s[ _middle_part : middle_part_ ] + x_val + s[ _last_part : last_part_ ]


#main

def get_inputs():
	N = int(input())
	inputs = []
	for i in range(N):
		inputs.append(input())
	return inputs

ans = OddToEven()

for i in get_inputs():
	print(ans.biggest_even(i))
