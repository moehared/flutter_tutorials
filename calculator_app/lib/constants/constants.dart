enum Buttons {
  num0,
  num1,
  num2,
  num3,
  num4,
  num5,
  num6,
  num7,
  num8,
  num9,
  AC,
  plusMinus,
  mod,
  divide,
  multiply,
  minus,
  add,
  equal,
  dot,
}
// print(Buttons[4][2]) //
// 2 by 2
const buttons = [
  // index 0
  [
    Buttons.AC, // index 0
    Buttons.plusMinus, // index 1
    Buttons.mod, // index 2
    Buttons.divide,
  ],
  [
    Buttons.num7,
    Buttons.num8,
    Buttons.num9,
    Buttons.multiply,
  ],
  [
    Buttons.num4,
    Buttons.num5,
    Buttons.num6,
    Buttons.minus,
  ],
  [
    Buttons.num1,
    Buttons.num2,
    Buttons.num3,
    Buttons.add,
  ],
  [
    Buttons.num0, // index 0
    Buttons.dot, // index 1
    Buttons.equal, // index 2
  ],
];
