Efronsitive
=============

Efronsitive is a library of 3D printable non-transitive dice.

[Thingiverse page for Efronsitive](http://www.thingiverse.com/thing:17782)

[Follow me on twitter](http://twitter.com/iamwil)

What are non-transitive dice?
----------------------------

[Non-transitive dice](http://en.wikipedia.org/wiki/Nontransitive_dice) are a set of dice where no one dice has a better chance of winning head-to-head with another dice in the set. They're like the rock-paper-scissors of the dice world. 

The idea for them have been around since the 1970's: Gardner, M. "Mathematical Games: The Paradox of the Nontransitive Dice and the Elusive Principle of Indifference." Sci. Amer. 223 , 110-114, Dec. 1970.

There are different sets of possible non-transitive dice, usually named after its inventor. I have three inventors here. If you have others, feel free to fork, contribute, and send a pull request! The three I have implemented here are Efron, Grime, and Miwin.

###Efron's Dice

[Efron's dice](http://en.wikipedia.org/wiki/Nontransitive_dice#Efron.27s_dice) are a set of four dice where each dice beats their predecessor by a probability of 2/3. 

The dice is named and ordered by the color scheme where:

    Blue > Magenta > Olive > Red > Blue

which means if you're reading the wikipedia article, A corresponds to Blue, B to Magenta, C to Olive, and D to Red. The colors of the dice are in alphabetical order, to help you remember. This color scheme was adopted from [here](http://singingbanana.com/dice/article.htm#FN5)

###Miwin's Dice

[Miwin's dice](http://en.wikipedia.org/wiki/Miwin%27s_dice) are two sets of three dice each with the probability that it will have a higher number than another is 17/36; a lower number, 15/36.

Since there are only three dice, each dice will beat one and lose to the other on average.

The dice can be distinguished by color, or by the sum of their smallest two 
numbers. For example, the III dice in the Miwin set has faces 1 and 2 on it, which 
are the smallest two numbers on the dice. Add up 1 and 2, and you get 3, which 
is the name of that Miwin dice. Dices III, IV, and V, are in one set, and dices 
IX, X, and XI, are in the other.

These set of dice also has reverse non-transitivity. Normally, III beats IV. But if you remove the common faces, the dice reverses their intransitivity, meaning now IV beats III. This applies to the other two combinations of IV and V, and V and III.

###Grime's Dice

[Grime's dice](http://singingbanana.com/dice/article.htm#FN5) is a set of 5 dice, each denoted by a color, where the order of which dice beats which is ordered in two ways:

    Alphabetical order of the color's name
    Blue > Magenta > Olive > Red > Yellow > Blue

    By the length of each color's name
    Red > Blue > Olive > Yellow > Magenta > Red

In general, the alphabetical chain is stronger than the word length chain. Overall, the average winning probability for one die is 63%

Like Miwin's dice, Grime's dice also has reverse non-transitivity. If you have two dice of each color, now the order for word length now flips so: 

    Magenta > Yellow > Olive > Blue > Red  >Magenta

With two dice, the chain ordered by word-length is stronger than the alphabetical chain. The average winning probability for two dice is 59%

Grime's dice has other fascinating properties that I suggest you look at [here](http://singingbanana.com/dice/article.htm#FN5).

Print it out
------------

In order to print out the chess set, you'll need a 3D printer, like the [Ultimaker](http://blog.ultimaker.com/), [Makerbot](http://makerbot.com), or [Prusa Mendel](http://www.makergear.com/products/3d-printers).

To get files to print, you need to "compile" the *.scad files into *.stl files. You can use [OpenSCAD](http://openscad.org) to compile and render using CGAL (push F6). Then, you'll be able to export the model as an STL file. Save it to the "print" directory.

Then load the STL files into using the software that your printer uses to print out objects, and print out each one!

Bill of Materials
-----------------

Under each of the directories is the name of a set of dice. It has a plate.scad file. Print out each one,  if you don't care about the color. But chances are you do, 
because it's easier to distinguish between the dice.

### Efron Dice

<table border="1">
  <tr>
    <th>Part name</th>
    <th>Color</th>
    <th>Quantity</th>
  </tr>
  <tr>
    <td>efron_blue.scad</td>
    <td>blue</td>
    <td>1</td>
  </tr>
  <tr>
    <td>efron_magenta.scad</td>
    <td>magenta</td>
    <td>1</td>
  </tr>
  <tr>
    <td>efron_olive.scad</td>
    <td>olive</td>
    <td>1</td>
  </tr>
  <tr>
    <td>efron_red.scad</td>
    <td>red</td>
    <td>1</td>
  </tr>
</table>

*or just print out efron/plate.scad if you don't care about colors*

### Grime Dice

<table border="1">
  <tr>
    <th>Part name</th>
    <th>Color</th>
    <th>Quantity</th>
  </tr>
  <tr>
    <td>grime_blue.scad</td>
    <td>blue</td>
    <td>1</td>
  </tr>
  <tr>
    <td>grime_magenta.scad</td>
    <td>magenta</td>
    <td>1</td>
  </tr>
  <tr>
    <td>grime_olive.scad</td>
    <td>olive</td>
    <td>1</td>
  </tr>
  <tr>
    <td>grime_red.scad</td>
    <td>blue</td>
    <td>1</td>
  </tr>
  <tr>
    <td>grime_yellow.scad</td>
    <td>yellow</td>
    <td>1</td>
  </tr>
</table>

*or just print out efron/plate.scad if you don't care about colors*

### Miwin Dice Set 1

<table border="1">
  <tr>
    <th>Part name</th>
    <th>Color</th>
    <th>Quantity</th>
  </tr>
  <tr>
    <td>miwin_iii.scad</td>
    <td>blue</td>
    <td>1</td>
  </tr>
  <tr>
    <td>miwin_iv.scad</td>
    <td>red</td>
    <td>1</td>
  </tr>
  <tr>
    <td>miwin_v.scad</td>
    <td>black</td>
    <td>1</td>
  </tr>
</table>

### Miwin Dice Set 2

<table border="1">
  <tr>
    <th>Part name</th>
    <th>Color</th>
    <th>Quantity</th>
  </tr>
  <tr>
    <td>miwin_ix.scad</td>
    <td>yellow</td>
    <td>1</td>
  </tr>
  <tr>
    <td>miwin_x.scad</td>
    <td>white</td>
    <td>1</td>
  </tr>
  <tr>
    <td>miwin_xi.scad</td>
    <td>green</td>
    <td>1</td>
  </tr>
</table>

*I've also provided the Miwin plates as well for convenience*

Usage
-----

You can make a regular dice by using dice.scad and just calling dice:

    // makes a standard dice
    dice()

To make other types of dice, you can set the number for the different faces:

    // the faces are top, bottom, left, right, front, and back, with a 
    // size of 25 by 25
    dice(1,1,1,2,3,4, [25, 25]);

The number for the faces can be from 0 to 9. The faces for the number 1 to 6 are standard pattern. For faces from 7 to 9, the pips are arrange so that the odd numbers are in a circular pattern, and the even number is in a square pattern.

For the set of the different dice, the names of the dice depends on the set.

    // Efron dice
    efron("blue", 1, [25, 25]);
    efron("magenta", set = 1, [25, 25]);
    efron("olive");
    efron("red");
    
    // Grime Dice
    grime("blue");
    grime("magenta");
    grime("olive");
    grime("red");
    grime("yellow");
    
    // Miwin Dice Set 1
    miwin(3, [25, 25]);
    miwin(4, [25, 25]);
    miwin(5, [25, 25]);
    
    // Miwin Dice Set 2
    miwin(9, [25, 25]);
    miwin(10, [25, 25]);
    miwin(11, [25, 25]);

And that's it!
