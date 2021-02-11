## PhantomMockObjectTestSuiteSample

An example project to reproduce mysterious "No stub for method XXX()" error

### Usage
1. `pod install`
2. Open `TestSuiteSample.xcworkspace`
3. Run test suite by `Cmd-U`

=> The test will fail due to two errors

![ViewModelTests](https://user-images.githubusercontent.com/879725/107623406-3d0aa700-6c94-11eb-825f-c015815c5790.png)
![ParentTests](https://user-images.githubusercontent.com/879725/107623392-3845f300-6c94-11eb-8a87-d63dc7598572.png)

It's very strange because the specific methods that are called out, are stubbed just above the failed lines.
Also, if you test each test individually, all tests succeed!!

If you uncomment L23~24 of `ViewModelTests.swift`, and L29 of `ParentTests.swift` and run the test suite again, miraculously succeed.

### Explanation

Detail in my [medium post](https://yfujiki.medium.com/hunting-down-phantom-mock-instances-in-xctestcases-95d35458f75f). 

