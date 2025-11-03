You MUST follow following rules when writing tests:

 - True object is preferred over Mock. Minimize the use of Mock as much as possible. Tests with Mock that fails should be deleted and replaced it with a solution with no Mocks when possible.
 - Using Any type is anti-pattern, try not to use it as much as possible.
 - We should minimize the number of tests while having maximal coverage.
 - Test code quality is the same as source code quality. They should be concise, modern and **must use type annotations**.
 - The final coverage should achieve at least the current coverage. No 100% coverage is needed unless explicitly asked.
 - You MUST read the Results documentation `https://returns.readthedocs.io/en/latest/pages/result.html` first for instruction to use the library. Use pattern matching and functional style as much as possible with classes in this library.
