export function seeingDouble(deck) {
  const res = deck.map((c) => c * 2);
  return res;
}

export function threeOfEachThree(deck) {
  for (let i = 0; i < deck.length; i++) {
    if (deck[i] === 3) {
      deck.splice(i, 0, 3, 3);
      i = i + 3;
    }
    if (i >= deck.length) {
      break;
    }
  }
  return deck;
}
export function middleTwo(deck) {
  const res = deck.slice(4, 6);
  return res;
}

export function sandwichTrick(deck) {
  const top = deck.shift();
  const bottom = deck.pop();
  console.log(deck);
  const mid = deck.length / 2;

  deck.splice(mid, 0, bottom, top);
  return deck;
}

export function twoIsSpecial(deck) {
  const res = deck.filter((c) => c === 2);
  return res;
}

export function perfectlyOrdered(deck) {
  deck.sort((a, b) => {
    if (a <= b) {
      return -1;
    }
  });
  return deck;
}

export function reorder(deck) {
  deck.reverse();
  return deck;
}
