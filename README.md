

Object Oriented Cards
=======

### Objectives 

1. Solidify understanding of objects and object-oriented programming
2. Begin learning efficient class design via inheritance
3. Learn about the `description` method for easier debugging

### Instructions 

1. Create three classes: **FISCard**, **FISPlayingCard**, and **FISBaseballCard**. `FISCard` will be our base class, and should inherit from `NSObject`.  `FISPlayingCard` and `FISBaseballCard` should each inherit from `FISCard`. (*Shortcut-time! Hit cmd+N, then select 'Cocoa Touch Class'*)

2. Cards have many distinguishing characteristics or (hint) *properties*. Flesh out your classes using this list. Think about which ones belong to all `FISCard`s, which belong to a `FISPlayingCard`, and which belong to a `FISBaseballCard`.  

    **For number-based properties, use either `NSInteger` or `CGFloat`**
    *  **playerWeight** (Float) - The player's weight in pounds
    *  **suit** (String) - The card's suit
    *  **playerNumber** (Integer) - The player's number 
    *  **rank** (Integer) - The cards rank.  ex. 4 of clubs has a rank of 4  
    *  **playerHeight** (Float) - The player's height in inches
    *  **teamName** (String) - The player's team's name
    *  **cardNumber** (Integer) - The card's production number ie. 279 
    *  **playerFirstName** (String) - The first name of the player on the card 
    *  **playerLastName** (String) - The last name of the player on the card
    *  **brand** (String) - The brand of the card 

    *Note: it's okay if your `FISCard` class seems a little bare — if applicable, having a basic parent class can be a good design choice because it can make future revisions easier.*

3.    You may have noticed that many of our properties describe characteristics of a baseball player...  Imagine we have two different `BaseballCard`s that each feature the same baseball player. Instead of retyping all of the players information, wouldn't it be nice if we could reuse a player we've already entered? 

4.    Let's refactor our code to be more re-usable by creating a fourth class called `FISBaseballPlayer`.
	  * Move all of the properties related to a baseball player out of the `BaseballCard` class and into your newly created `BaseballPlayer` class. 
	  * *Don't forget to make the `FISBaseballPlayer`'s properties public!* Make sure they're in the class's `@interface` in its .h file.
	  * Create a property of type `FISBaseballPlayer` in the `FISBaseballCard` class. [*Pro-tip: if the compiler is complaining, you likely forgot to `#import "FISBaseballPlayer.h";`*]
5.    Time to see them in action! Inside of `FISAppDelegate.m`'s `didFinishLaunchingWithOptions`, instantiate...
      - 2 `FISBaseballPlayers` 
      - 3 `FISPlayingCard` 
      - 3 `FISBaseballCard`s, and make 2 of them share the same `FISBaseballPlayer`. 

    Then, **use `NSLog` to print out your objects in the debugger.** You should see something like `<FISBaseballPlayer: 0x7fef53c8e7a0>`. By default, your objects will show their class name and memory address when logged. Is that a useful _description_ for that object? 

5.    The default description doesn't mean much to us because we aren't machines! Fortunately we can **override** the `description` method so the debugger will log information we want to see. To override a method in objective-C, just write its implementation in the `.m` like we've been doing all along. So...
      * for `FISPlayingCard`: 
      return a string containing its `rank` and `suit` (copy/paste these ASCII representations for the suits: ♥  ♠  ♣  ♦).

      * for `FISBaseballCard`: 
      return a string containing the players `firstName`, `lastName`, and `teamName`. 

7.    Print the `description` of your `FISBaseballCard`s and `FISPlayingCard`s to the console using `NSLog`. Are all of your properties set to what you expected? Also note how this is super useful for debugging!

**Be sure to run the tests!**

### Extra Credit

1. Add designated initializers to `FISPlayingCard`, `FISBaseballPlayer` and `FISBaseballCard` classes, and refactor your initializations (in `didFinishLaunchingWithOptions`) to use your new designated initializers.
2. Create methods in the `FISBaseballPlayer` class that return weight in KG (`CGFloat`) and height in feet and inches (`NSString`)