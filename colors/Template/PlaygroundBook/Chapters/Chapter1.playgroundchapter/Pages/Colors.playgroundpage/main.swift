//#-hidden-code
//
//  See LICENSE folder for this template’s licensing information.
//
//  Abstract:
//  The Swift file containing the source code edited by the user of this playground book.
//
//#-end-hidden-code

//#-hidden-code
//
//  See LICENSE folder for this template’s licensing information.
//
//  Abstract:
//  The Swift file containing the source code edited by the user of this playground book.
//
//#-code-completion(everything, hide)
//#-end-hidden-code
/*:
 
 Hi, my name is **Beatriz**, but people call me Bia. That's a picture of myself on the right. 👉🏼
 
 I'm a research intern at **Apple Developer Academy - IFCE**, and undergraduate of **Computer science** at **Instituto Federal de Educação, Ciência e Tecnologia do Ceará**.
 
 ### Prepared for storytime?
 
 Color. It plays a vital role in the design and everyday life.
 
 It can bring your eyes to a certain image and evoke a mood or feeling or even some communication without using words.
 
 But how do we know which colors look good together and which don't?
 
 [Next Page: Image Processing](@next)
 */

//#-hidden-code
import PlaygroundSupport
import SpriteKit
import UIKit
import BookCore

let sceneView = SKView(frame: CGRect(x: 0, y: 0, width: 512, height: 768))

if let scene = GameScene(fileNamed: "ColorsGameScene") {
    scene.scaleMode = .aspectFill
    sceneView.presentScene(scene)
}

PlaygroundPage.current.liveView = sceneView
PlaygroundPage.current.needsIndefiniteExecution = true
//#-end-hidden-code
