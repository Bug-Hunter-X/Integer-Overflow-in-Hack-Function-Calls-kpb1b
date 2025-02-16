function foo(x: int): int {
  if (x > 2147483646) {  // Check for potential overflow
    return -1; // Or throw an exception
  }
  return x + 1;
}

function bar(x: int): int {
  if (x > 2147483645) {  // Check for potential overflow
    return -1; // Or throw an exception
  }
  var temp = foo(x);
  if (temp == -1) {return -1;}
  return temp + 1;
}

function baz(x: int): int {
  if (x > 2147483644) {  // Check for potential overflow
    return -1; // Or throw an exception
  }
  var temp = bar(x);
  if (temp == -1) {return -1;}
  return temp + 1;
}

function main(): void {
  var x = 10;
  var y = baz(x);
  echo y; // Expected: 13, Actual: 13
  x = 2147483644;
  y = baz(x);
  echo y; //Expected: -1, Actual: -1
}
