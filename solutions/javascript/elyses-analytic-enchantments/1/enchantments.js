export function getCardPosition(stack, card) {
  const res = stack.indexOf(card);
  return res;
}

export function doesStackIncludeCard(stack, card) {
  const res = stack.includes(card);
  return res;
}

export function isEachCardEven(stack) {
  const res = stack.every((c) => c % 2 === 0);
  return res;
}

export function doesStackIncludeOddCard(stack) {
  const res = stack.some((c) => c % 2 !== 0);
  return res;
}

export function getFirstOddCard(stack) {
  const res = stack.find((c) => c % 2 !== 0);
  return res;
}

export function getFirstEvenCardPosition(stack) {
  const res = stack.findIndex((c) => c % 2 === 0);
  return res;
}

const res = getFirstEvenCardPosition([5, 2, 3, 1]);
console.log(res);
