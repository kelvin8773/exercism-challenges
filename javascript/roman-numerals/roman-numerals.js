export const toRoman = number => {
  let romansIndex = ["V", "L", "D", "M"];
  let numberArr = number
    .toString()
    .split("")
    .reverse();
  let romans = [];

  const getRomanByDigit = (digit, index) => {
    digit = parseInt(digit);
    let romanDigit = "";
    let begin = "I",
      end = "X";

    switch (index) {
      case "V":
        break;
      case "L":
        (begin = "X"), (end = "C");
        break;
      case "D":
        (begin = "C"), (end = "M");
        break;
      case "M":
        romanDigit = "M".repeat(digit);
        return romanDigit;
    }

    if (digit < 4) {
      romanDigit = begin.repeat(digit);
    } else if (digit === 4 || digit === 9) {
      romanDigit = digit > 5 ? begin + end : begin + index;
    } else if (digit >= 5 && digit < 9) {
      romanDigit = index + begin.repeat(digit - 5);
    }
    return romanDigit;
  };

  for (let i = 0; i < numberArr.length; i++) {
    romans.push(getRomanByDigit(numberArr[i], romansIndex[i]));
  }

  return romans.reverse().join("");
};
