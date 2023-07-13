package binary_search

import "core:intrinsics"

binary_search :: proc(haystack: ^[]$T, needle: T) -> (index: int = -1, found: bool = false) 
	where intrinsics.type_is_comparable(T) && intrinsics.type_is_ordered(T)
	{
	low := 0
	high := len(haystack)

	for low < high {
		m := low + (high - low) / 2

		if haystack[m] == needle {
			index = m
			found = true
			return
		}

		if haystack[m] < needle {
			low = m + 1
		}

		if haystack[m] > needle {
			high = m
		}
	}

	return
}