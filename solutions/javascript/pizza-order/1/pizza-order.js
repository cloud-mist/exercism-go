const price = {
  Margherita: 7,
  Caprese: 9,
  Formaggio: 10,
  ExtraSauce: 1,
  ExtraToppings: 2,
};
export function pizzaPrice(pizza, ...extras) {
  function calc(...extras) {
    if (extras.length === 0) {
      return 0;
    }
    let [first, ...other] = extras;
    return price[first] + calc(...other);
  }

  let res = calc(...extras);
  return res + price[pizza];
}

export function orderPrice(pizzaOrders) {
  const init = 0;
  const res = pizzaOrders.reduce(
    (acc, cur) => pizzaPrice(cur.pizza, ...cur.extras) + acc,
    init,
  );
  return res;
}
