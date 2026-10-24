export function cardTypeCheck(stack, card) {
  // 🚨 Use .forEach
  let res = 0;
  stack.forEach((value, _index) => {
    if (value === card) {
      res++;
    }
  });
  return res;
}

export function determineOddEvenCards(stack, type) {
  // 🚨 Use a `for...of` loop

  let res = 0;
  for (const c of stack) {
    if (type && c % 2 === 0) {
      res++;
    }
    if (!type && c % 2 !== 0) {
      res++;
    }
  }
  return res;
}
