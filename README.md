Efronsitive
=============

Efronsitive is a library of 3D printable non-transitive dice.

[Thingiverse page for Efronsitive](http://www.thingiverse.com/thing:17782)

[Follow me on twitter](http://twitter.com/iamwil)

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

