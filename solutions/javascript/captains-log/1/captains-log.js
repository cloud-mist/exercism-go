// Math.random [0,1) ->  * 9000 [0,9000)  ->  + 1000 -> [1000, 10000)
export function randomShipRegistryNumber() {
  const num = Math.floor(Math.random() * 9000) + 1000;
  return `NCC-${num}`;
}
export function randomStardate() {
  const num = Math.random() * 1000 + 41000; // [41000.0, 42000.0)
  return num;
}
export function randomPlanetClass() {
  const s = "DHJKLMNRTY";
  const index = Math.floor(Math.random() * 10);
  return s[index];
}
