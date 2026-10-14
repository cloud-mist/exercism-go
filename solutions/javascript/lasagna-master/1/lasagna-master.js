export function cookingStatus(timer) {
  if (timer === 0) {
    return "Lasagna is done.";
  } else if (timer === undefined) {
    return "You forgot to set the timer.";
  }
  return "Not done, please wait.";
}

export function preparationTime(layers, perLayerMin = 2) {
  return perLayerMin * layers.length;
}

export function quantities(layers) {
  let res = { noodles: 0, sauce: 0 };
  for (const l of layers) {
    if (l === "sauce") {
      res.sauce += 0.2;
    } else if (l === "noodles") {
      res.noodles += 50;
    }
  }
  return res;
}

export function addSecretIngredient(friendsList, myList) {
  myList.push(friendsList[friendsList.length - 1]);
}

export function scaleRecipe(recipe, amount) {
  let num = amount / 2;
  let res = {};
  for (const o in recipe) {
    res[o] = recipe[o] * num;
  }
  return res;
}
