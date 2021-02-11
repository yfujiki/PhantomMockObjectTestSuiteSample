## PhantomMockObjectTestSuiteSample

An example project to reproduce mysterious "No stub for method XXX()" error

### Usage
1. `pod install`
2. Open `TestSuiteSample.xcworkspace`
3. Run test suite by `Cmd-U`

=> The test will fail due to 

```
No stub for method `logAppIsActive()` using parameters (). (NSInternalInconsistencyException)
```

If you uncomment L23~24 of `ViewModelTests.swift` and run the test suite again, it would succeed.

### Explanation

In my medium post. 
