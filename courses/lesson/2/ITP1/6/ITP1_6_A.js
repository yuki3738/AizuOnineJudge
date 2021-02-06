'use strict';

function Main(input) {
  let args = input.trim().split("\n");
  let a = args[1].split(" ").map((x) => parseInt(x, 10));
  console.log(a.reverse().join(" "));
}

Main(require("fs").readFileSync("/dev/stdin", "utf8"));
