## Description

Write a function to identify all non-consecutive pairs in an array.

The function should return a nested array of pairs.

Example # 1

```
non_consec_pairs(['a', 'b', 'c'])
=> [['a', 'c']]
```

In this example 'a' & 'b' are consecutive, as are 'b' & 'c'.

Leaving only one non-consecutive pairing that can be made; 'a' & 'c'.

Example # 2

```
non_consec_pairs([1, 2, 3, 4])
=> [[1, 3], [1, 4], [2, 4]]
```

### Note

The input will always be flat a array but the contents and size will vary
