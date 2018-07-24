## Description:
Function composition is a mathematical operation that mainly presents itself in lambda calculus and computability. It is explained well here, but this is my explanation, in simple mathematical notation:

```
f3 = compose( f1 f2 )
   Is equivalent to...
f3(a) = f1( f2( a ) )
```

Your task is to create a compose function to carry out this task, which will be passed two functions or lambdas.

compose(f , g).(x)
=> f.( g.( x ) )

## Example

```
add1 = ->(a){a + 1}
id   = ->(a){a}

Test.expect( compose(add1,id).(0) == 1 )
```
