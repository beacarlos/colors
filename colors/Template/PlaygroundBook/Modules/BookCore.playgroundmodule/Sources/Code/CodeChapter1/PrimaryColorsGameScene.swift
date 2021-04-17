//
//  ColorsGameScene.swift
//  BookCore
//
//  Created by Beatriz Carlos on 15/04/21.
//

import PlaygroundSupport
import SpriteKit
import UIKit

public class PrimaryColorsGameScene: SKScene {
    var backgroundColorCustom = UIColor(red: 0.99, green: 0.97, blue: 0.92, alpha: 1.00)
    
    // nodes
    private var spinnyNode : SKShapeNode = {
        let node = SKShapeNode(circleOfRadius: 3)
        node.fillColor = UIColor(red: 0.98, green: 0.64, blue: 0.27, alpha: 1.00)
        node.lineWidth = 1
        return node
    }()
    
    private var primaryColorsText: SKNode = {
        let node = SKSpriteNode(imageNamed: "PrimaryColorsText")
        node.position = CGPoint(x: 100, y: 170)
        node.setScale(0.15)
        return node
    }()
        
    private var circleDote: SKNode = {
        let node = SKSpriteNode(imageNamed: "circledote")
        node.position = CGPoint(x: 100, y: 100)
        node.setScale(0.18)
        return node
    }()
    
    private var yellowArrow: SKNode = {
        let node = SKSpriteNode(imageNamed: "setaYellow")
        node.position = CGPoint(x: 130, y: 130)
        node.setScale(0.15)
        node.zRotation = 0.8
        node.zPosition = -1
        node.isUserInteractionEnabled = false
        return node
    }()
    
    private var yellowText: SKNode = {
        let node = SKSpriteNode(imageNamed: "yellow")
        node.position = CGPoint(x: 130, y: 150)
        node.setScale(0.15)
        node.name = "yellowText"
        return node
    }()
    
    private var blueText: SKNode = {
        let node = SKSpriteNode(imageNamed: "Blue")
        node.position = CGPoint(x: 65, y: 50)
        node.setScale(0.15)
        node.name = "blueText"
        node.isUserInteractionEnabled = false
        return node
    }()
    
    private var blueArrow: SKNode = {
        let node = SKSpriteNode(imageNamed: "setaBlue")
        node.position = CGPoint(x: 70, y: 70)
        node.setScale(0.15)
        node.zRotation = 0.8
        node.zPosition = -1
        return node
    }()
    
    private var redText: SKNode = {
        let node = SKSpriteNode(imageNamed: "Red")
        node.position = CGPoint(x: 140, y: 50)
        node.setScale(0.15)
        node.name = "redText"
        node.isUserInteractionEnabled = false
        return node
    }()
    
    private var redArrow: SKNode = {
        let node = SKSpriteNode(imageNamed: "setaRed")
        node.position = CGPoint(x: 130, y: 70)
        node.setScale(0.15)
        node.zRotation = -0.5
        node.zPosition = -1
        return node
    }()
    
    override public func didMove(to view: SKView) {
        self.backgroundColor = backgroundColorCustom
        
        self.addChild(primaryColorsText)
        self.addChild(circleDote)
        self.addChild(yellowText)
        self.addChild(yellowArrow)
        self.addChild(blueText)
        self.addChild(blueArrow)
        self.addChild(redText)
        self.addChild(redArrow)
        
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
        for t in touches {
            let node = self.atPoint(t.location(in :self))
            //          if(node.name == "sad") {
            //            sad.alpha = 0
            //            self.backgroundColor = UIColor(red: 0.99, green: 0.91, blue: 0.70, alpha: 1.00)
            //            happy.alpha = 1
            //
            //          }
            
            if let redTextNode = node.name, redTextNode == "redText" {
            }
        }
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
