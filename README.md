Here’s a **README.md** template for your **String Calculator TDD Kata** solution using **Ruby on Rails**:

---

# String Calculator - TDD Kata

This is a solution to the **String Calculator TDD Kata** written in **Ruby on Rails** with **RSpec**. The purpose of this kata is to demonstrate proficiency in **Test-Driven Development (TDD)** and software craftsmanship by implementing a simple string calculator.

## Requirements

- Ruby 3.x+
- Rails 6.x+
- RSpec for testing

## Problem Statement

You need to implement a simple string calculator with the following requirements:

1. **Add method**: 
    - `add(string numbers)` - Takes a string of comma-separated numbers and returns their sum.
  
2. **Edge Cases**:
    - An empty string `""` should return `0`.
    - A string with a single number (e.g., `"1"`) should return that number (e.g., `1`).
    - The method should handle multiple numbers (e.g., `"1,5"`) and return their sum (e.g., `6`).
    - The method should support new lines as delimiters (e.g., `"1\n2,3"` should return `6`).
    - The method should support custom delimiters (e.g., `"//;\n1;2"` should return `3`).
    - The method should throw an exception if any negative numbers are included in the input, listing all negative numbers in the exception message.

## Setup

1. Clone this repository:
   ```bash
   git clone https://github.com/jaishank94/spec
   cd string_calculator_tdd_kata
   ```

2. Install dependencies:
   ```bash
   bundle install
   ```

3. Run the test suite:
   ```bash
   rspec
   ```

   This will execute all the test cases for the String Calculator and ensure everything is functioning correctly.

## Features Implemented

- **Sum Calculation**: The `add` method calculates the sum of comma-separated numbers.
- **Handles New Line Delimiters**: Supports both commas and new lines for separating numbers.
- **Custom Delimiters**: Supports custom delimiters as specified by the user.
- **Exception for Negative Numbers**: Throws an exception for negative numbers with a detailed message.

## How It Works

### Method Signature:
```ruby
class StringCalculator
  def self.add(numbers)
    # implementation here
  end
end
```

### Test Cases:
- **Empty string returns 0**:
  ```ruby
  expect(StringCalculator.add("")).to eq(0)
  ```
- **Single number returns the number**:
  ```ruby
  expect(StringCalculator.add("1")).to eq(1)
  ```
- **Multiple numbers sum correctly**:
  ```ruby
  expect(StringCalculator.add("1,5")).to eq(6)
  ```
- **Handles new lines as delimiters**:
  ```ruby
  expect(StringCalculator.add("1\n2,3")).to eq(6)
  ```
- **Custom delimiters work**:
  ```ruby
  expect(StringCalculator.add("//;\n1;2")).to eq(3)
  ```
- **Throws exception for negative numbers**:
  ```ruby
  expect { StringCalculator.add("1,-2,3,-4") }.to raise_error("negative numbers not allowed -2, -4")
  ```

## Next Steps

- Continue improving the solution by refactoring the code as needed.
- Explore adding more complex features such as ignoring numbers greater than 1000.

## License

This repository is licensed under the MIT License.

---