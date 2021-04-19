//#-hidden-code
//
//  See LICENSE folder for this template’s licensing information.
//
//  Abstract:
//  The Swift file containing the source code edited by the user of this playground book.
//
//#-end-hidden-code
/*:
 ## I'm very happy that you made it to the end!

 ### A little about myself
 Hi, my name is Beatriz Carlos, but they call me Bia. 🧡
 
 I'm a research intern at the **Apple Developer Academy - IFCE, Brasil**, and an undergraduate of **Computer science** at IFCE the Federal Institute of Education, Science and Technology of Ceará.
 
 It's amazing how colors can influence everything. I tried to teach in this playground the basic study of color theory and I was very excited to be able to talk about a hobby.
 
 Thank you! 🧡
 */
//#-hidden-code
import PlaygroundSupport
import SpriteKit
import UIKit
import BookCore

let sceneView = SKView(frame: CGRect(x: 0, y: 0, width: 512, height: 768))

let scene = ThankYouGameScene(size: CGSize(width: 200, height: 200))
scene.backgroundColor = .red
scene.scaleMode = .aspectFill
sceneView.presentScene(scene)

PlaygroundPage.current.liveView = sceneView
PlaygroundPage.current.needsIndefiniteExecution = true
PlaygroundPage.current.assessmentStatus = .pass(message: "You finished!")
//#-end-hidden-code
