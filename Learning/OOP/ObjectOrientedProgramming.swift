import Foundation

/*

 // Object Oriented Programming
 
 // During the life the app, we create and destroy objects
 // Create = Initialize (init) = Allocate (add to memory)
 // Destroy = Deinitialize (deinit) = Deallocate (remove from memory)

 // Automatic Reference Counting (ARC)
 // A live count of the number of objects in memory
 // Create 1 object, count goes up by 1
 // Create 2 objects, count goes up by 2
 // Destroy 1 object, count goes down by 1

 // The more objects in memory, the slower the app performs
 // We want to keep the ARC count as low as possible
 // We want to create objects only when we need them
 // And destroy them as soon as we no longer need them

 // For example, if an app has 2 screens and user is moving from screen 1 to screen 2. We only want to allocate screen 2 WHEN we need it (ie. when the user clicks a button to segue to screen 2). When we get to screen 2, we may want to deallocate screen 1.


 // There are two types of Memory
 // Stack & Heap
 // Only objects in the Heap are counted towards ARC


 // Objects in the Stack
 // String, Bool, Int, most basic types 
 // NEW: Struct, Enum

 // Objects in the Heap
 // Functions
 // NEW: Class, Actors

 // iPhone is a "multi-threaded environment"
 // There are multiple "threads" or "engines" running simultaneously
 // Each thread has a Stack 
 // But there is only 1 Heap for all threads


 // Therefore:
 // Stack is faster, lower memory footprint, preferable
 // Heap is slower, higher memory footprint
 


 // Value vs Reference types

 // Objects in the Stack are "Value" types.
 // When you create a Value type, you create a copy of it with new data.

 // Objects in the Heap are "Reference" types.
 // When you edit a Refernce type, you edit the object that you are referencing. This "reference" is called "pointer" because it "points" to an object in the Heap (in memory).
 


*/