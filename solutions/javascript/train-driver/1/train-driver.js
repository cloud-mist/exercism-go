export function getListOfWagons(a, b, c, d, e, f, g, h, i, j, k, l, m, n) {
  return [...arguments];
}

export function fixListOfWagons(ids) {
  const [a, b, ...other] = ids;
  return [...other, a, b];
}

export function correctListOfWagons(ids, missingWagons) {
  const [a, ...id] = ids;
  return [a, ...missingWagons, ...id];
}

export function extendRouteInformation(information, additional) {
  return { ...information, ...additional };
}

export function separateTimeOfArrival(information) {
  const { timeOfArrival, ...other } = information;
  return [timeOfArrival, other];
}
