---
  tags: tutorial, beginner, OOP, Object-Oriented Programming, model 
  languages: objc
---

Object Oriented Card Game
=======

### Goals 

* Solidify understanding of objects and object-oriented programming
* Learn efficient class design
* Refactor suboptimal program design to be more reusable 

### Instructions 

1. Create three classes: **Card**, **PlayingCard**, and **BaseballCard**. The base class, Card should inherit from NSObject.  PlayingCard and BaseballCard should each inherit from Card.  

2. Cards have many distinguishing characteristics or /* hint */ properties.  Here are a few that you need to include in your classes.  Think about which characteristics belong to all cards and which belong to a PlayingCard or BaseballCard.  
    *  **playerWeight** (Integer) - The player's weight in pounds
    *  **description** (String) - A written description of the cards contents 
    *  **suit** (String) - The card's suit 
    *  **playerNumber** (Integer) - The player's number 
    *  **rank** (Integer) - The cards rank.  ex. 4 of clubs has a rank of 4  
    *  **playerHeight** (Integer) - The player's height in inches
    *  **teamName** (String) - The player's team's name
    *  **cardNumber** (Integer) - The card's production number ie. 300 
    *  **playerFirstName** (String) - The first name of the player on the card 
    *  **playerLastName** (String) - The last name of the player on the card
    *  **matched** (BOOL) - Has the card been matched with another card? 
    *  **brand** (String) - The brand of the card



3.    You may have noticed that many of our properties describe characteristics of a baseball player.  Imagine we have two different baseballCards that each feature the same baseball player. Instead of retyping all of the players information wouldn't it be nice if we could reuse the player information we already entered? 

4.    Let's refactor our code to be more usable by creating a fourth class called BaseballPlayer.
	  * Move all of the properties related to a baseball player out of the card class and into your newly created BaseballPlayer's public interface
	  * Create a property of type BaseballPlayer in the PlayingCard class (if the compiler is complaining, you likely forgot to #import the BaseballPlayer class)

5.    Implement the description property for the PlayingCard and BaseballCard classes.  
      playingCard.description 
      should return rank and suit (use the ASCII character representations of hearts, spades, clubs and diamonds). 
      baseballCard.description 
      should return the players firstName lastName and teamName 

6.    Inside of AppDelegate.m's didFinishLaunchingWithOptions method, instantiate 3 playing cards, 3 baseball cards and 2 baseball players.  2 of your baseball cards should share the same baseball player. 

7.    Print the descriptions of your baseball cards and playing cards to the console using NSLog. 

### Extra Credit

1. Add designated initializers to the PlayingCard and BaseballCard classes and refactor your initializations (in didFinishLaunchingWithOptions) to use designated initializers rather than setter methods.
2.  In the playing card class add 2 private methods, 
    - (BOOL)validRank:(NSNumber *)rank 
    and 
    - (BOOL)validSuit:(NSString *)suit
3. Incorporate validRank and validSuit into your program such that it is impossible to return any rank not between 1-13 or any suit besides (ASCII hearts, spades, clubs, or diamonds)  
4. Create methods in the BaseballPlayer class that return weight in KG (NSNumber) and height in Feet and inches (NSString)




