require 'pry-byebug'

def merge_sort(arr)
  
  if arr.length > 1
    # divide arr into two halves
    b_arr = arr[0..(arr.length/2)-1]
    c_arr = arr[(arr.length/2)..arr.length]
    # conquer-recursively sort the two smaller arrays
    merge_sort(b_arr)
    merge_sort(c_arr)

    # combine-merge the two sorted, smaller arrays into a single sorted array
    b_counter = 0
    c_counter = 0
    until b_counter >= b_arr.length || c_counter >= c_arr.length
      if b_arr[b_counter] < c_arr[c_counter]
        arr[b_counter+c_counter] = b_arr[b_counter]
        b_counter += 1
      else
        arr[b_counter+c_counter] = c_arr[c_counter]
        c_counter += 1
      end
    end
    if b_counter >= b_arr.length
      # copy contents from c_arr to a_arr
      until c_counter >= c_arr.length
        arr[b_counter+c_counter] = c_arr[c_counter]
        c_counter += 1
      end
    else
      # copy contents from b_arr to a_arr
      until b_counter >= b_arr.length
        arr[b_counter+c_counter] = b_arr[b_counter]
        b_counter += 1
      end
    end
  end
  return arr
end

arr = [4,5,6,7,1,2,3,4,4,4,4]
p merge_sort(arr)