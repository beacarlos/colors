//
//  ColorsGameScene.swift
//  BookCore
//
//  Created by Beatriz Carlos on 15/04/21.
//

import PlaygroundSupport
import SpriteKit
import UIKit

public class SecondaryColorsGameScene: SKScene {
    var backgroundColorCustom = UIColor(red: 0.99, green: 0.97, blue: 0.92, alpha: 1.00)
    // nodes
    private var spinnyNode : SKShapeNode = {
        let node = SKShapeNode(circleOfRadius: 3)
        node.fillColor = UIColor(red: 0.98, green: 0.64, blue: 0.27, alpha: 1.00)
        node.lineWidth = 1
        return node
    }()
    
    private var secondaryColorsText: SKNode = {
        let node = SKSpriteNode(imageNamed: "SecondaryColorsText")
        node.position = CGPoint(x: 100, y: 170)
        node.setScale(0.15)
        return node
    }()
    
    private var circleYellow: SKShapeNode = {
        let node = SKShapeNode(circleOfRadius: 10)
        node.fillColor = UIColor.PrimaryColors.yellow
        node.strokeColor = SKColor.clear
        node.position = CGPoint(x: 65, y: 140)
        node.name = "circleYellow"
        return node
    }()
    
    private var circleRed: SKShapeNode = {
        let node = SKShapeNode(circleOfRadius: 10)
        node.fillColor = UIColor.PrimaryColors.red
        node.strokeColor = SKColor.clear
        node.position = CGPoint(x: 95, y: 140)
        node.name = "circleRed"
        return node
    }()
    
    private var circleOrange: SKShapeNode = {
        let node = SKShapeNode(circleOfRadius: 10)
        node.fillColor = UIColor.SecondaryColors.orange
        node.strokeColor = SKColor.clear
        node.position = CGPoint(x: 130, y: 140)
        node.name = "circleOrange"
        return node
    }()
    
    override public func didMove(to view: SKView) {
        self.backgroundColor = backgroundColorCustom
        
        self.addChild(secondaryColorsText)
        self.addChild(circleYellow)
        self.addChild(circleRed)
        self.addChild(circleOrange)
        
        let fadeAndRemove = SKAction.sequence([.wait(forDuration: 0.2), .fadeOut(withDuration: 0.5), .removeFromParent()])
        spinnyNode.run(fadeAndRemove)
    }
    
    @objc static override public var supportsSecureCoding: Bool {
        // SKNode conforms to NSSecureCoding, so any subclass going
        // through the decoding process must support secure coding
        get {
            return true
        }
    }
    
    func touchDown(atPoint pos : CGPoint) {
        
    }
    
    func touchMoved(toPoint pos : CGPoint) {
    }
    
    func touchUp(atPoint pos : CGPoint) {
        guard let n = spinnyNode.copy() as? SKShapeNode else { return }
        
        n.position = pos
        self.addChild(n)
    }
    
    override public func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        //        for t in touches {
        //            let node = self.atPoint(t.location(in :self))
        //
        ////            if let redTextNode = node.name, redTextNode == "redText" {
        //            }
        //        }
    }
    
    override public func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        for t in touches { touchMoved(toPoint: t.location(in: self)) }
    }
    
    override public func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        for t in touches { touchUp(atPoint: t.location(in: self)) }
    }
    
    override public func touchesCancelled(_ touches: Set<UITouch>, with event: UIEvent?) {
        for t in touches { touchUp(atPoint: t.location(in: self)) }
    }
    
    override public func update(_ currentTime: TimeInterval) {
        // Called before each frame is rendered
    }
}
