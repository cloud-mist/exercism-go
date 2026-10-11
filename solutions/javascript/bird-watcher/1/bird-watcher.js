export function totalBirdCount(birdsPerDay) {
  const len = birdsPerDay.length;
  let res = 0;
  for (let i = 0; i < len; i++) {
    res += birdsPerDay[i];
  }
  return res;
}

export function birdsInWeek(birdsPerDay, week) {
  let res = 0;
  const len = birdsPerDay.length;
  for (let i = 0 + (week - 1) * 7; i < Math.min(len, week * 7); i++) {
    res += birdsPerDay[i];
  }
  return res;
}

export function fixBirdCountLog(birdsPerDay) {
  const len = birdsPerDay.length;
  for (let i = 0; i < len; i++) {
    if (i % 2 === 0) {
      birdsPerDay[i]++;
    }
  }
  return birdsPerDay;
}
