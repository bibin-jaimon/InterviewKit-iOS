# iOS interview preparation guide

> 🚀 Explain the design principle that you follows while developing a software [#12](https://github.com/bibin-jaimon/2023-ios-interview-prep/issues/12#issue-2086920279)

> 🚀 How to create a generic protocol in Swift [#13](https://github.com/bibin-jaimon/2023-ios-interview-prep/issues/13#issue-2086925400)

> 🚀 How would you optimize the performance and scrolling smoothness of the table view? [#7](https://github.com/bibin-jaimon/2023-ios-interview-prep/issues/7#issue-1998834546)

```
🚀 Difference between Any, any and AnyObject
```

```
🚀 Difference between fileprivate and private
```


> 🚀 What is capture list in Swift? Explain with example


```
🚀 What is Generics in Swift
```

> **Self self .self**

> ObjectIdentifier

> Discardable result
> Property wrappers
> Stack vs heap allocation

Why its called pop

Why extension can’t stored props

What is property wrappers

Difference between internal and public

How can we achieve abstraction in swift

Question: What is the difference between the retain cycle and the capture list in iOS? How do you avoid retain cycles in your code?

Question: What are the best practices you can use to handle memory management in iOS?

Question: What is the type of optional in Swift? How are they used and why are they significant?

Question: What are the most effective ways to write clean code?

Question: Compare static and dynamic libraries in iOS. How are dynamic libraries different from static libraries in memory usage?

Question: What approaches can you use to optimize performance and avoid bottlenecks in case of heavy loads like many UI updates or computationally intensive tasks?

Question: Describe the differences between a reference type and a value type in Swift. How to choose between them?

Question: Why is code smells so important in iOS? What are the common code smells in Swift?

Question: What should you consider while designing an iOS app to support offline mode?

Question: Explain the difference between Escaping and Non-Escaping Closures in Swift.

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
Difference between weak and unowned
```

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
9> Difference between escaping and non-escaping closer
10> What is difference between Array and NSArray

> **What is defer keyword and its use**

12> Where you have used unowned
13> What is Protocol- Composition and Protocol-Extension
14> What are access specifiers in swift
15> What is difference between Open and Public
16> What is difference between private and filePrivate
17> What is Optional binding and optional chaining
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
