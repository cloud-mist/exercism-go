export function buildSign(occasion, name) {
  return `Happy ${occasion} ${name}!`;
}

export function buildBirthdaySign(age) {
  const str = age >= 50 ? "mature" : "young";
  return `Happy Birthday! What a ${str} fellow you are.`;
}

export function graduationFor(name, year) {
  return `Congratulations ${name}!\nClass of ${year}`;
}

export function costOf(sign, currency) {
  const cost = (sign.length * 2 + 20).toFixed(2);
  return `Your sign costs ${cost} ${currency}.`;
}
