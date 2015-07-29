

Object Oriented Cards
=======

### Goals 

* Solidify understanding of objects and object-oriented programming
* Begin learning efficient class design via inheritance

### Instructions 

1. Create three classes: **Card**, **PlayingCard**, and **BaseballCard**. `Card` will be our base class, and should inherit from `NSObject`.  `PlayingCard` and `BaseballCard` should each inherit from `Card`. (*Shortcut-time! Hit cmd+N, then select 'Cocoa Touch Class'*)

2. Cards have many distinguishing characteristics or (hint) *properties*. Flesh out your classes using this list. Think about which ones belong to all `Card`s, which belong to a `PlayingCard`, and which belong to a `BaseballCard`.  
    *  **playerWeight** (Integer) - The player's weight in pounds
    *  **suit** (String) - The card's suit
    *  **playerNumber** (Integer) - The player's number 
    *  **rank** (Integer) - The cards rank.  ex. 4 of clubs has a rank of 4  
    *  **playerHeight** (Integer) - The player's height in inches
    *  **teamName** (String) - The player's team's name
    *  **cardNumber** (Integer) - The card's production number ie. 279 
    *  **playerFirstName** (String) - The first name of the player on the card 
    *  **playerLastName** (String) - The last name of the player on the card
    *  **brand** (String) - The brand of the card 

    *Note: it's okay if your `Card` class seems a little bare — if applicable, having a basic parent class can be a good design choice because it can make future revisions easier.*

3.    You may have noticed that many of our properties describe characteristics of a baseball player...  Imagine we have two different `BaseballCard`s that each feature the same baseball player. Instead of retyping all of the players information, wouldn't it be nice if we could reuse a player we've already entered? 

4.    Let's refactor our code to be more re-usable by creating a fourth class called `BaseballPlayer`.
	  * Move all of the properties related to a baseball player out of the `BaseballCard` class and into your newly created `BaseballPlayer` class. 
	  * *Don't forget to make the `BaseballPlayer`'s properties public!* Make sure they're in the class's `@interface` in its .h file.
	  * Create a property of type `BaseballPlayer` in the `BaseballCard` class. [*Pro-tip: if the compiler is complaining, you likely forgot to `#import "BaseballPlayer.h";`*]

5.    Override the `description` method for `PlayingCard` and `BaseballCard` classes.  
      * for `PlayingCard`: 
      should return a string containing its `rank` and `suit` (copy/paste these ASCII representations for the suits: ♥  ♠  ♣  ♦).

      * for `BaseballCard`: 
      should return a string containing the players `firstName`, `lastName`, and `teamName`. 

6.    Time to see them in action! Inside of `AppDelegate.m`'s `didFinishLaunchingWithOptions`, instantiate 3 `PlayingCard`s, 3 `baseballCard`s and 2 `BaseballPlayer`s.  2 of your `BaseballCard`s should share the same `BaseballPlayer`. 

7.    Print the `description` of your `BaseballCard`s and `PlayingCard`s to the console using `NSLog`.

**Be sure to run the tests too!**

### Extra Credit

1. Add designated initializers to `PlayingCard`, `BaseballPlayer` and `BaseballCard` classes, and refactor your initializations (in `didFinishLaunchingWithOptions`) to use your new designated initializers.
2. Create methods in the `BaseballPlayer` class that return weight in KG (`NSNumber`) and height in feet and inches (`NSString`)