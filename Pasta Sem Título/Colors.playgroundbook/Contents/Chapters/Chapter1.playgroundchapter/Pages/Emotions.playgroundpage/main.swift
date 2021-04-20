//#-hidden-code
/*:
 Template developer by: Apple
 Created by Beatriz Carlos in April 2021.
 Copyright ©️ 2021 Beatriz Carlos. All rights reserved.
 */
//#-end-hidden-code

/*:
 # Color: It plays a vital role in the design and everyday life.
 ## Prepared for storytime?
 When I imagined a theme for my playground, something that is a hobby for me came to mind.
 
 To color. I love coloring books, books that have castles, flowers, and enchanted forests.

 When I am coloring I have the feeling of having the naivety of a child, with a free mind and it is incredible to be able to take a drawing that is in black and white, apply
 color, and with my imagination put it like the world is in my vision.

 I'm going to teach you a little bit about this magical world. Enjoy!

 ## Introduction to color theory. 🎨
 Colors are everywhere, but have you ever wondered why they are where they are?
 Do you see the same color as your friends?
 Well, if you have never asked yourself about it, it is a good starting point for studying color theory. It is to realize that color influences and can evoke a climate or a feeling.

 * Experiment:
  With all these in mind, try to do the activity:
  
      1. Tap to Run My Code
      2. Tap on the sad face to make it happy.
 
 **Look how amazing the power of colors is! 🌈**

 To use it all you need is a little understanding, and you will look at the colors in a new way. Let's learn? \
 Let's start with the basics, the principle.
*/

//#-hidden-code
import PlaygroundSupport
import SpriteKit
import UIKit
import BookCore

let sceneView = SKView(frame: CGRect(x: 0, y: 0, width: 512, height: 768))

let scene = EmotionsGameScene(size: CGSize(width: 200, height: 200))
scene.backgroundColor = .red
scene.scaleMode = .aspectFill
sceneView.presentScene(scene)

PlaygroundPage.current.liveView = sceneView
PlaygroundPage.current.needsIndefiniteExecution = true
//#-end-hidden-code
