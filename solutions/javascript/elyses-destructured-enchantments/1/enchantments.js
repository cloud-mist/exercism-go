export function getFirstCard(deck) {
  const [first] = deck;
  return first;
}

export function getSecondCard(deck) {
  const [, second] = deck;
  return second;
}

export function swapTwoCards(deck) {
  const [a, b] = deck;
  return [b, a];
}

export function shiftThreeCardsAround(deck) {
  const [a, b, c] = deck;
  return [b, c, a];
}

export function pickNamedPile(piles) {
  const { chosen } = piles;
  return chosen;
}

export function swapNamedPile(piles) {
  const { chosen: disregarded, disregarded: chosen } = piles;
  return { chosen, disregarded };
}
