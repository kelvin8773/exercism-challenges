export class InputCell {
  constructor(number) {
    this.value = number;
  }

  setValue(number) {
    this.value = number;
  }
}

export class ComputeCell {
  constructor(inputCells, func) {
    this.value = func(inputCells);
  }
}
