Feature: Displaying Significant Figures
    
    Scenario Outline: Returning numbers with the correct number of signficant figures
     Given a number <number>
     And  an amount of sigfigs, <sigfigs>
     Then I should get a result of <result>

     Scenarios: Different numbers
     | number    | sigfigs     | result     |
     | 5         | 3           |  5.00      |
     | 52334     | 4           |  52330     |
     | 52337     | 4           |  52340     |
     | 0.003322  | 2           |  0.0033    |
     | 0.003362  | 2           |  0.0034    |
     | 0.003362  | 3           |  0.00336   |
     | 520.334   | 4           |  520.3     |
     | 520.334   | 5           |  520.33    |
     | 520.334   | 3           |  520       |
     | 520.334   | 2           |  500       |
     | 7.003     | 3           |  7.00      |
     | 7.003     | 4           |  7.003     |
     | -5        | 3           |  -5.00     |
     | -52334    | 4           |  -52330    |
     | -52337    | 4           |  -52340    |
     | -0.003322 | 2           |  -0.0033   |
     | -0.003362 | 2           |  -0.0034   |
     | -0.003362 | 3           |  -0.00336  |
     | -520.334  | 4           |  -520.3    |
     | -520.334  | 5           |  -520.33   |
     | -520.334  | 3           |  -520      |
     | -520.334  | 2           |  -500      |
     | -7.003    | 3           |  -7.00     |
     | -7.003    | 4           |  -7.003    |
     | 8.003     | 6           |  8.00300   |
     | 50.223    | 2           |  50        |
     | 50.223    | 3           |  50.2      |
     | 50.223    | 8           |  50.223000 |
     | 52.01     | 4           |  52.01     |
     | 52.01     | 5           |  52.010    |
     | -52.01    | 4           | -52.01     |
      
      