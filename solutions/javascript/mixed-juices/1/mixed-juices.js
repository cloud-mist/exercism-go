// @ts-check
//
// The line above enables type checking for this file. Various IDEs interpret
// the @ts-check directive. It will give you helpful autocompletion when
// implementing this exercise.

/**
 * Determines how long it takes to prepare a certain juice.
 *
 * @param {string} name
 * @returns {number} time in minutes
 */
export function timeToMixJuice(name) {
  let m = 0;
  switch (name) {
    case "Pure Strawberry Joy":
      m = 0.5;
      break;
    case "Green Garden":
      m = 1.5;
      break;
    case "Energizer":
      m = 1.5;
      break;
    case "Tropical Island":
      m = 3;
      break;
    case "All or Nothing":
      m = 5;
      break;
    default:
      m = 2.5;
  }
  return m;
}

/**
 * Calculates the number of limes that need to be cut
 * to reach a certain supply.
 *
 * @param {number} wedgesNeeded
 * @param {string[]} limes
 * @returns {number} number of limes cut
 */
export function limesToCut(wedgesNeeded, limes) {
  let res = 0;
  let times = 0;
  if (wedgesNeeded === 0) {
    return 0;
  }
  for (const l of limes) {
    let tmp = 0;
    if (l === "small") {
      tmp = 6;
    } else if (l === "large") {
      tmp = 10;
    } else {
      tmp = 8;
    }

    res += tmp;
    times++;
    if (res >= wedgesNeeded) {
      break;
    }
  }
  return times;
}

/**
 * Determines which juices still need to be prepared after the end of the shift.
 *
 * @param {number} timeLeft
 * @param {string[]} orders
 * @returns {string[]} remaining orders after the time is up
 */
export function remainingOrders(timeLeft, orders) {
  for (; timeLeft > 0; ) {
    let o = orders.shift();
    timeLeft -= timeToMixJuice(o);
  }
  return orders;
}
