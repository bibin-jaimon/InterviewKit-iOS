

![Black and White Creative Profile Information LinkedIn Article Cover Image](https://github.com/bibin-jaimon/InterviewKit-iOS/assets/22428886/7ad0e306-17a0-42c5-980e-c6f24aea9af5)

# iOS interview questions


List of iOS interview question which collected from real world interviews

## The Concurrency

- How do we achieve concurrency in iOS
- What is GCD
- Explain sync and async
- Ever face any race condition in iOS. Explain with example
- What is DispatchQueue
- Explain sync and async of DispatchQueue
- Types of DispatchQueues
- What is quality of services
- Explain a scenario where we can use DispatchGroup
- What is DispatchWorkItem
- Why we need Operations
- Predict output of the codes
- Explain semaphore in Swift
- What is target quenes in iOS

## Memory Management

- Please explain memory management in iOS
- What is ARC. Explain the working
- What is strong references
- Will ARC only works with classes?
- Explain memory leak in iOS
- How do we find memory leak in iOS
- What is weak and unowned. Explain the difference
- What are the best practices you can use to handle memory management in iOS?
- When to use unowned


## The Debugging

- Explain your experinece in with debugging
- What is LLD
- How do we test the low network scenario in iOS
- How do you track crash happened in production

## Custom types

- Difference between Struct and Class
- How do we choose between class and structure
- Is array refernce type or value stype? What about strings?
- What is copy on write
- What is value type and reference type
- Stack vs heap allocation
- What kind of memory allocation is used for struct and why

## The performance
- How would you optimize the performance and scrolling smoothness of the table view? [#7](https://github.com/bibin-jaimon/2023-ios-interview-prep/issues/7#issue-1998834546)

## The protocols
- How to create a generic protocol in Swift [#13](https://github.com/bibin-jaimon/2023-ios-interview-prep/issues/13#issue-2086925400)
- What is Protocol - Composition and Protocol - Extension
- How how to give default implementation for protocol methods

## The core
- Explain the design principle that you follows while developing a software [#12](https://github.com/bibin-jaimon/2023-ios-interview-prep/issues/12#issue-2086920279)
- Design patterns used in development


## The Access control
- Difference between fileprivate and private
- Explain access control in swift
- Difference between internal and public
- Difference between open and public

## The Extension
- Advantage of using extensions
- Can we create a stored property in extension and how we can create it

## The Closure
- Explain closure and types
- What is capture list in Swift? Explain with example
- Explain the difference between Escaping and Non-Escaping Closures in Swift
- Is closure reference type


## The Optionals
- What is the type of optional in Swift? How are they used and why are they significant
- Explain optionals unwrapping
- How do you handle absense of a value in Swift
- What is Optional binding and optional chaining
- If optionals are not there, How would you create one

## The Generics
- What is generics
- How do we create a generic func which only works with a particular type in Swift
- Can we create generic protocols

## The System Design

Asking relevent question to interviewer is the key when it comes to system design

- How do you create an Authentication module
- Design a news app with two screens

## The Behaviour
- What do you check in the PR reviews
- What is your thoughts on using third party libraries
- A challenging situation in last 6 months
- Why did you left the previous company
- What motivates you to work at current company
- Why are you leaving the current company
- Why should we hire you
- Role and responsibilities
- What are your expectaions for next role
- How do you resolve conflict with a collegue
- Share a situation when you were under pressure
- Share a situation where you take risk
- Share an experience about a failure

---

<!---
> 🚀 Difference between Any, any and AnyObject

> 🚀 What is Generics in Swift

> **Self self .self**

> ObjectIdentifier

> Discardable result
> Property wrappers
> 

Why its called pop

Why extension can’t stored props

What is property wrappers



How can we achieve abstraction in swift

Question: What is the difference between the retain cycle and the capture list in iOS? How do you avoid retain cycles in your code?

Question: 

Question: 

Question: What are the most effective ways to write clean code?

Question: Compare static and dynamic libraries in iOS. How are dynamic libraries different from static libraries in memory usage?

Question: What approaches can you use to optimize performance and avoid bottlenecks in case of heavy loads like many UI updates or computationally intensive tasks?


Question: Why is code smells so important in iOS? What are the common code smells in Swift?

Question: What should you consider while designing an iOS app to support offline mode?

Question: 

Value capturing closure

Generics

Why its called pop

Why extension can’t stored props

What is property wrappers

Difference between internal and public

How can we achieve abstraction in swift

Defer key word and execution order

---

```text
Consider the following scenario: You have a table view with a large number of cells containing images. How would you optimize the performance and scrolling smoothness of the table view?
```

> To optimize the performance and scrolling smoothness of a table view with a large number of cells containing images, the following strategies can be employed:
>
> `Implement Cell Reuse`: Use cell reuse by utilizing the dequeueReusableCell(withIdentifier:forIndexPath:) method provided by UITableView. This allows cells to be recycled and reused instead of creating new cells for each row. By reusing cells, memory consumption is reduced and scrolling performance is improved.
>
> `Asynchronous Image Loading`: Download or load images asynchronously on a background queue, so that the main UI thread is not blocked. This can be achieved by using libraries such as SDWebImage or AlamofireImage, which handle asynchronous image loading and caching.
>
> `Image Caching`: Implement image caching to avoid redundant downloads or fetches from the network. Caching can be done using tools like NSCache or third-party libraries such as SDWebImage or Kingfisher. Caching improves performance by storing images in memory or on disk, reducing the need for repeated network requests.
>
> `Lazy Loading`: Load images lazily as the cells become visible on the screen. This can be achieved by implementing a technique known as "lazy loading" where you load the images for only the visible cells and postpone loading the rest until they become visible. This approach prevents unnecessary loading of off-screen images and improves scrolling performance.
>
> `Image Resizing`: Resize the images to the appropriate dimensions for display in the table view cells. Large images consume more memory and take longer to render. By resizing the images to match the cell's size or a predefined size, you can significantly improve performance.
>
> `Prefetching`: Implement the prefetchRows(at:) method provided by UITableViewDataSourcePrefetching protocol to prefetch the images for upcoming cells as the user scrolls. This can be done by initiating image loading or downloading in advance for cells that are likely to become visible next. Prefetching enhances the user experience by reducing the lag when new cells appear on the screen.
>
> `Reduce Cell Complexity`: Simplify the cell's layout and contents. Minimize the number of subviews, avoid complex hierarchy, and use lightweight UI components. By reducing the complexity of the cell, the rendering process becomes faster, resulting in smoother scrolling.
>
> `Compress Images`: Compress the images to reduce their file size without significant loss of quality. Smaller image sizes lead to faster downloads and improved rendering performance.
>
> By employing these optimization techniques, you can ensure a smooth and efficient scrolling experience for a table view with a large number of cells containing images.

---



```
How call get landed on device when its not active
```
```
How calling and messaging is handled in your project
```
```
What is use of ScrollView content size method
```
7> What is reusable identifier and what is its use
8> Explain VIPER design pattern
9> 
10> What is difference between Array and NSArray

> **What is defer keyword and its use**

12> 
13> 
14> What are access specifiers in swift
15> What is difference between Open and Public
16> What is difference between private and filePrivate
17> 
18> What is difference between static and dynamic framework
19> How you add your own framework in pods
20> What is Codable protocol
21> What is drawback of Codable protocol
22> What are drawBacks of VIPER design pattern
23> What is constraints and its use
24> What is difference between content Hugging and Compression- Resistance
25> What is XCTAssert in Unit Testing
26> Have you worked on UITesting
27> What is universal Link
28> What is App thinning
29> How you will achieve App thinning
30> Find pairs of colours in given array - [1,2,1,3,4,2,1]
31> What is autoReleasePool , when to use it ?
32> How memory management happen in iOS
33> How reference count works in iOS
34> Difference between Struct and Class
35> What is the difference between GCD and OperationQueue
36> What is Protocol Oriented Programming language

🍎 iOS View Controller Life Cycle
🍎 iOS App Life Cycle 
🍎 iOS architectural patterns
🍎 OOP in iOS 
🍎 POP in iOS 

Can we cancel the task in GCD? Yes, DispatchWorkItem

Static dispatch vs dynamic dispatch
Method dispatch

Design Pattern(structural pattern, creatinal pattern, behavioural patterns)
- Singleton
- Facade
- Observer
- 
- 

iOS view size classes


content huggin compression resistance
code example with sync vs async in serial and concurrent view.
--->
