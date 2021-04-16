//#-hidden-code
//
//  See LICENSE folder for this template’s licensing information.
//
//  Abstract:
//  The Swift file containing the source code edited by the user of this playground book.
//
//#-end-hidden-code


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
