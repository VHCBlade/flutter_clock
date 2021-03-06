import 'dart:math';

const pixelWidthCount = 13;
const pixelHeightCount = 27;

/// Creates the points for a given [number]
///
/// Points will be adjusted based on the given [rectangle]
List<Point> createNumberPixels(Rectangle rectangle, int number) {
  final numberMap = pickNumber(number);

  final pixelWidth = rectangle.width / pixelWidthCount;
  final pixelHeight = rectangle.height / pixelHeightCount;

  final retVal = <Point>[];

  for (int i = 0; i < pixelWidthCount; i++) {
    final xCoord = rectangle.left + i * pixelWidth;

    for (final y in numberMap[i]) {
      retVal.add(Point(xCoord, rectangle.top + y * pixelHeight));
    }
  }

  return retVal;
}

/// Picks the correct coordinates to use for displaying the one-digit [number]
List<List<int>> pickNumber(int number) {
  assert(number <= 9 && number >= 0);

  switch (number) {
    case 0:
      return zero;
    case 1:
      return one;
    case 2:
      return two;
    case 3:
      return three;
    case 4:
      return four;
    case 5:
      return five;
    case 6:
      return six;
    case 7:
      return seven;
    case 8:
      return eight;
    case 9:
    default:
      return nine;
  }
}

const zero = [
  [4, 5, 7, 8, 10, 11, 12, 14, 15, 16, 18, 19, 21, 22],
  [3, 6, 9, 13, 17, 20, 23],
  [2, 4, 5, 7, 8, 10, 11, 12, 14, 15, 16, 18, 19, 21, 22, 24],
  [1, 3, 23, 25],
  [0, 2, 24, 26],
  [0, 2, 24, 26],
  [1, 25],
  [0, 2, 24, 26],
  [0, 2, 24, 26],
  [1, 3, 23, 25],
  [2, 4, 5, 7, 8, 10, 11, 12, 14, 15, 16, 18, 19, 21, 22, 24],
  [3, 6, 9, 13, 17, 20, 23],
  [4, 5, 7, 8, 10, 11, 12, 14, 15, 16, 18, 19, 21, 22]
];

const one = [
  [7, 9],
  [6, 8],
  [5, 7],
  [5, 7],
  [4, 6],
  [3, 5],
  [3, 5],
  [2, 4],
  [1, 3],
  [1, 3, 5, 7, 9, 11, 13, 15, 17, 19, 21, 23, 25],
  [0, 2, 4, 6, 8, 10, 12, 14, 16, 18, 20, 22, 24, 26],
  [0, 2, 4, 6, 8, 10, 12, 14, 16, 18, 20, 22, 24, 26],
  [1, 3, 5, 7, 9, 11, 13, 15, 17, 19, 21, 23, 25],
];

const two = [
  [3, 5, 20, 21, 23, 24],
  [2, 4, 19, 22, 25],
  [1, 3, 18, 20, 21, 23, 24, 26],
  [0, 2, 17, 19, 24, 26],
  [0, 2, 16, 18, 25],
  [1, 15, 17, 24, 26],
  [0, 2, 14, 16, 24, 26],
  [0, 2, 13, 15, 25],
  [0, 2, 12, 14, 24, 26],
  [1, 3, 11, 13, 24, 26],
  [2, 4, 5, 6, 8, 9, 10, 12, 25],
  [3, 7, 11, 24, 26],
  [4, 5, 6, 8, 9, 10, 24, 26],
];

const three = [
  [0, 2, 24, 26],
  [0, 2, 24, 26],
  [1, 25],
  [0, 2, 11, 24, 26],
  [0, 2, 10, 12, 24, 26],
  [1, 10, 12, 25],
  [0, 2, 11, 24, 26],
  [0, 2, 10, 12, 24, 26],
  [1, 10, 12, 25],
  [0, 2, 9, 11, 13, 24, 26],
  [0, 2, 3, 4, 6, 7, 8, 10, 12, 14, 15, 16, 18, 19, 20, 22, 23, 24, 26],
  [1, 5, 9, 13, 17, 21, 25],
  [2, 3, 4, 6, 7, 8, 10, 12, 14, 15, 16, 18, 19, 20, 22, 23, 24]
];

const four = [
  [11, 12, 14],
  [10, 13, 15],
  [9, 11, 12, 14],
  [7, 8, 10, 13, 15],
  [6, 9, 13, 15],
  [5, 7, 8, 14],
  [4, 5, 7, 13, 15],
  [3, 6, 13, 15],
  [1, 2, 4, 5, 14],
  [0, 3, 13, 15],
  [1, 2, 4, 5, 7, 8, 10, 11, 13, 14, 16, 17, 19, 20, 22, 23, 25, 26],
  [0, 3, 6, 9, 12, 15, 18, 21, 24],
  [1, 2, 4, 5, 7, 8, 10, 11, 13, 14, 16, 17, 19, 20, 22, 23, 25, 26]
];

const five = [
  [2, 4, 5, 7, 8, 24, 26],
  [1, 3, 6, 9, 25],
  [0, 2, 4, 5, 7, 8, 10, 24, 26],
  [0, 2, 9, 24, 26],
  [1, 8, 10, 24, 26],
  [0, 2, 8, 10, 25],
  [0, 2, 9, 24, 26],
  [1, 8, 10, 24, 26],
  [0, 2, 8, 10, 24, 26],
  [0, 2, 9, 11, 23, 25],
  [1, 10, 12, 13, 14, 16, 17, 18, 20, 21, 22, 24],
  [0, 2, 11, 15, 19, 23],
  [0, 2, 12, 13, 14, 16, 17, 18, 20, 21, 22]
];

const six = [
  [4, 5, 6, 8, 9, 10, 12, 13, 14, 16, 17, 18, 20, 21, 22],
  [3, 7, 11, 15, 19, 23],
  [2, 4, 5, 6, 8, 9, 10, 12, 13, 14, 16, 17, 18, 20, 21, 22, 24],
  [1, 3, 13, 23, 25],
  [0, 2, 12, 14, 24, 26],
  [1, 12, 14, 24, 26],
  [0, 2, 13, 25],
  [0, 2, 12, 14, 24, 26],
  [0, 2, 12, 14, 24, 26],
  [1, 13, 15, 23, 25],
  [0, 2, 14, 16, 17, 18, 20, 21, 22, 24],
  [0, 2, 15, 19, 23],
  [1, 16, 17, 18, 20, 21, 22]
];

const seven = [
  [0, 2, 24, 25],
  [0, 2, 22, 23, 26],
  [1, 20, 21, 24, 25],
  [0, 2, 18, 19, 22, 23],
  [0, 2, 16, 17, 20, 21],
  [1, 14, 15, 18, 19],
  [0, 2, 12, 13, 16, 17],
  [0, 2, 10, 11, 14, 15],
  [1, 8, 9, 12, 13],
  [0, 2, 6, 7, 10, 11],
  [0, 2, 4, 5, 8, 9],
  [1, 3, 6, 7],
  [0, 2, 4, 5]
];

const eight = [
  [4, 5, 6, 8, 9, 10, 16, 17, 18, 20, 21, 22],
  [3, 7, 11, 15, 19, 23],
  [2, 4, 5, 6, 8, 9, 10, 12, 14, 16, 17, 18, 20, 21, 22, 24],
  [1, 3, 11, 13, 15, 23, 25],
  [0, 2, 12, 14, 24, 26],
  [0, 2, 12, 14, 24, 26],
  [1, 13, 25],
  [0, 2, 12, 14, 24, 26],
  [0, 2, 12, 14, 24, 26],
  [1, 3, 11, 13, 15, 23, 25],
  [2, 4, 5, 6, 8, 9, 10, 12, 14, 16, 17, 18, 20, 21, 22, 24],
  [3, 7, 11, 15, 19, 23],
  [4, 5, 6, 8, 9, 10, 16, 17, 18, 20, 21, 22],
];

const nine = [
  [4, 5, 6, 8, 9, 10, 25],
  [3, 7, 11, 24, 26],
  [2, 4, 5, 6, 8, 9, 10, 12, 24, 26],
  [1, 3, 11, 13, 25],
  [0, 2, 12, 14, 24, 26],
  [0, 2, 12, 14, 24, 26],
  [1, 13, 24, 26],
  [0, 2, 12, 14, 25],
  [0, 2, 12, 14, 24, 26],
  [1, 3, 13, 23, 25],
  [2, 4, 5, 6, 8, 9, 10, 12, 13, 14, 16, 17, 18, 20, 21, 22, 24],
  [3, 7, 11, 15, 19, 23],
  [4, 5, 6, 8, 9, 10, 12, 13, 14, 16, 17, 18, 20, 21, 22],
];
