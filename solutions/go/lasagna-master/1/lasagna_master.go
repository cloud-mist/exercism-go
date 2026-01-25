package lasagna

// TODO: define the 'PreparationTime()' function
func PreparationTime(layers []string, per int) int {
	if per == 0 {
		per = 2
	}
	return len(layers) * per
}

// TODO: define the 'Quantities()' function
func Quantities(layers []string) (int, float64) {
	noodle, sauce := 0, 0.0
	for _, v := range layers {
		if v == "sauce" {
			sauce += 0.2
			continue
		}
		if v == "noodles" {
			noodle += 50
			continue
		}
	}
	return noodle, sauce
}

// TODO: define the 'AddSecretIngredient()' function
func AddSecretIngredient(fr, my []string) {
	my[len(my)-1] = fr[len(fr)-1]
}

// TODO: define the 'ScaleRecipe()' function
func ScaleRecipe(quantities []float64, num int) []float64 {
	var res []float64
	for _, v := range quantities {
		res = append(res, v*(float64(num)/2.0))
	}
	return res
}

// Your first steps could be to read through the tasks, and create
// these functions with their correct parameter lists and return types.
// The function body only needs to contain `panic("")`.
//
// This will make the tests compile, but they will fail.
// You can then implement the function logic one by one and see
// an increasing number of tests passing as you implement more
// functionality.
