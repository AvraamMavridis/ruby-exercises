## Description

Take a look at wiki description of Connect Four game:

<a href="https://en.wikipedia.org/wiki/Connect_Four"> Wiki Connect Four</a>

The grid columns are named from A to G:


You will receive a list of string that shows the order of the pieces which droped in columns:

```
            List<string> myList = new List<string>()
            {
                "A_Red",
                "B_Yellow",
                "A_Red",
                "B_Yellow",
                "A_Red",
                "B_Yellow",
                "G_Red",
                "B_Yellow"
            };
```

The list may contains 42 or less strings, but the order shows the order that players are playing.

The first player who connect four items in same color is the winner.

you should return "Yellow", "Red" or "Draw".
