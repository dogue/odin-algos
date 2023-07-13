package binary_search

import "core:testing"

@(test)
test_search_int :: proc(t: ^testing.T) {
	input := []int{0, 1, 2, 3, 4, 5, 6, 7, 8, 9}

	i, f := binary_search(&input, 8)

	if !f {
		testing.fail_now(t, "Failed to find existent needle")
	}

	if i != 8 {
		testing.fail_now(t, "Returned incorrect index for existent needle")
	}

	i, f = binary_search(&input, 11)

	if f {
		testing.fail_now(t, "Returned true for non-existent needle")
	}

	if i != -1 {
		testing.fail_now(t, "Returned incorrect index for non-existent needle")
	}
}