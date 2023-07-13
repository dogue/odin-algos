package bubble_sort

import "core:intrinsics"

sort :: proc(arr: ^[]$T) 
	where intrinsics.type_is_ordered(T)
	{
		len := len(arr)

		for _, i in arr {
			for _, j in arr[:len - i - 1] {
				if arr[j] > arr[j + 1] {
					arr[j], arr[j + 1] = arr[j + 1], arr[j]
				}
			}
		}
	}
