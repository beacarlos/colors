//#-hidden-code
//
//  See LICENSE folder for this template’s licensing information.
//
//  Abstract:
//  The Swift file containing the source code edited by the user of this playground book.
//
//#-end-hidden-code

/*:
 # Secondary colors
 From yellow, blue and red, we can reach orange, purple and green, the so-called **secondary colors**. So, let's look at the mixtures that resulted in these non-pure tones:
 
 ### Mixture of colors:
  * Orange is the result of the combination of yellow and red.
  * Green is the result of the combination of blue and yellow.
  * Purple (or violet) is the result of a mixture of red and blue colors.
 
 * Experiment:
  With all these in mind, try to do the activity:
  
      1. Tap to Run My Code
      2. Tap on the primary colors and will show you the resulting color.
      3. Have fun, repeat until all colors appear. 🎉
 */

//#-hidden-code
import PlaygroundSupport
import SpriteKit
import UIKit
import BookCore

let sceneView = SKView(frame: CGRect(x: 0, y: 0, width: 512, height: 768))

let scene = SecondaryColorsGameScene(size: CGSize(width: 200, height: 200))
scene.backgroundColor = .red
scene.scaleMode = .aspectFill
sceneView.presentScene(scene)

PlaygroundPage.current.liveView = sceneView
PlaygroundPage.current.needsIndefiniteExecution = true
//#-end-hidden-code
