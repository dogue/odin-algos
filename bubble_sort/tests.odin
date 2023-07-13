package bubble_sort

import "core:testing"

@(test)
test_sort_int :: proc(t: ^testing.T) {
	input := []int{4, 5, 2, 1, 9, 6}
	expected := []int{1, 2, 4, 5, 6, 9}

	sort(&input)

	for i, j in input {
		if i != expected[j] {
			testing.fail_now(t, "Value mismatch")
		}
	}
}