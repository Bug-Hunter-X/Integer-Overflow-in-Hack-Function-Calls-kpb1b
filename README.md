# Integer Overflow Bug in Hack

This repository demonstrates a subtle integer overflow bug in Hack code. The bug occurs due to the accumulation of integer values across multiple function calls.  The solution illustrates how to avoid this type of error using type checking and explicit range handling.

## Bug Description

The `baz` function calculates the result of three additions. If the initial input is sufficiently large, the final sum exceeds the maximum representable integer value, causing an overflow and an incorrect result.

## Solution

The solution addresses the issue by adding checks for potential overflows within each function and using appropriate data types to handle larger integer ranges.
