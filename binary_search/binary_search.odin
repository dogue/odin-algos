package binary_search

import "core:intrinsics"

binary_search :: proc(haystack: ^[]$T, needle: T) -> (index: int = -1, found: bool = false) 
	where intrinsics.type_is_comparable(T) && intrinsics.type_is_ordered(T)
	{
	low := 0
	high := len(haystack)

	for low < high {
		m := low + (high - low) / 2

		if m == needle {
			index = m
			found = true
			return
		}

		if m < needle {
			low = m + 1
		}

		if m > needle {
			low = 0
			high = m
		}
	}

	return
}