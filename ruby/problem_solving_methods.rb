#arr = [69, 12,	27,	71,	5,
#59,	19,	16,	34,	90,
#82,	10,	80,	17,	33,
#26,	12,	23,	4,	18,
#94,	6,	63,	97,	29,
#19,	64,	56,	5,	48]

#def search_array(integer)
#	if search_array.include integer

#	else
#		puts nil
#	end
#end


arr = [42, 89, 23, 1]

def search_array(arr, integer)
   
   index = 0
   position = []
  
   while index <arr.length
      if arr[index] == integer
         position.push(index) 
      end
      index += 1
  end
position = nil if (position.length < 1)
position
end

 
def fib(x)
  fib_array = [0, 1]
  index = 0

	while index < fib_array.length

    fib_array.push ((fib_array.last) + (fib_array[fib_array.length-2]))
  
    index += 1
    
    break if x == fib_array.length

  	end
  
  p fib_array
  
  p fib_array.last

end

fib(100)

#pseudocode insertion sort
# - Start at first index
#  - evaluate that expression
# - move to the next index
#  - evaluate that expression and determine if higher or lower than previous index
#  - if lower, move to the left, if higher, keep where it is
# - move to the next index
#  - evaluate that index
#  - if lower, move into the sorted indices, if higher, keep where it is
#- continue to iterate through list until you reach an entire sorted array

arr = [69, 12,	27,	71,	5,
59,	19,	16,	34,	90,
82,	10,	80,	17,	33,
26,	12,	23,	4,	18,
94,	6,	63,	97,	29,
19,	64,	56,	5,	48]

def Insertion_Sort(arr)
    for size in 2..arr.length
        element = arr[size-1]   

        index = size - 2
        while(index >= 0) && (element < arr[index])
            arr[index + 1] = arr[index]
            index-=1
        end
        arr[index+1] = element
    end
p arr      
end

Insertion_Sort(arr)
