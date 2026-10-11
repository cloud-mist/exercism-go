export function needsLicense(kind) {
  return kind === "car" || kind === "truck";
}

export function chooseVehicle(option1, option2) {
  const s1 = " is clearly the better choice.";
  let res = "";
  if (option1 < option2) {
    res = option1 + s1;
  } else {
    res = option2 + s1;
  }
  return res;
}

export function calculateResellPrice(originalPrice, age) {
  if (age < 3) {
    return originalPrice * 0.8;
  } else if (age >= 3 && age <= 10) {
    return originalPrice * 0.7;
  } else {
    return originalPrice * 0.5;
  }
}
