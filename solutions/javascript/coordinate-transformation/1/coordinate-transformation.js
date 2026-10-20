export function translate2d(dx, dy) {
  return function (a, b) {
    return [a + dx, dy + b];
  };
}

export function scale2d(sx, sy) {
  return function (a, b) {
    return [a * sx, b * sy];
  };
}

export function composeTransform(f, g) {
  return function (a, b) {
    const [x, y] = f(a, b);
    return g(x, y);
  };
}

export function memoizeTransform(f) {
  let lastArgs = null;
  let lastRes = null;

  return function (...args) {
    if (
      lastArgs != null &&
      lastArgs.length === args.length &&
      args.every((arg, i) => arg === lastArgs[i])
    ) {
      return lastRes;
    } else {
      lastArgs = args;
      lastRes = f(...args);
      return lastRes;
    }
  };
}
