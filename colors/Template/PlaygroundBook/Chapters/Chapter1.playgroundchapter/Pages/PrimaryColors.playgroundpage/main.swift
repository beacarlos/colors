//#-hidden-code
//
//  See LICENSE folder for this template’s licensing information.
//
//  Abstract:
//  The Swift file containing the source code edited by the user of this playground book.
//
//#-end-hidden-code

/*:
# Primary Color 🎨
Do you remember that when you were a child in your art class you learned about primary and secondary colors?
So you already understand and have some knowledge about color theory.

 The first color studies were done in ancient Greece by Aristotle. According to him, colors existed in the form of rays sent by God. For Aristotle, the simplest colors would be those of the elements: **earth, air, fire, and water.**
 
 His vision was based on his conception of color, on the observation that the sunlight, when crossing or reflecting on an object, has its intensity reduced, darkens. Through this process, the color would be produced, that is, the color would be derived from a transition from light to dark, or, in another way, Aristotle saw them as a mixture, a composition, an overlap of black and white.
 
 Under the conception of Aristotle's premise, I will introduce you to the **primary colors**, and **secondary colors**.
 
 # Primary Colors
 There are only three true colors: red (magenta), yellow and blue (cyan).
 
 They are called primaries, because nothing can be mixed to produce them: they must be made or bought. With them we can make any other color, except white, which is not a real color.
 
 - Important:
    The three primaries that artists use most are: red (cadmium), ultramarine blue, and lemon yellow.

 Depending on the three primaries you choose from the wide range of reds, blues and yellows you will have different secondary colors.
 
 * Experiment:
  With all these in mind, try to do the activity:
  
      1. Tap to Run My Code
      2. Tap on one of the parts and the primary color appears.
      3. Have fun, repeat until all colors appear. 🎉
 */
//#-hidden-code

import PlaygroundSupport
import SpriteKit
import UIKit
import BookCore

let sceneView = SKView(frame: CGRect(x: 0, y: 0, width: 512, height: 768))

let scene = PrimaryColorsGameScene(size: CGSize(width: 200, height: 200))
scene.backgroundColor = .red
scene.scaleMode = .aspectFill
sceneView.presentScene(scene)

PlaygroundPage.current.liveView = sceneView
PlaygroundPage.current.needsIndefiniteExecution = true
//#-end-hidden-code
