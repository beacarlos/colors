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
        node.fillColor = .white
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
        node.setScale(0.17)
        node.isUserInteractionEnabled = false
        node.name = "circleDote"
        return node
    }()
    
    private var TriangleBlue: SKNode = {
        let node = SKSpriteNode(imageNamed: "TriangleBlue")
        node.position = CGPoint(x: 81.5, y: 92)
        node.setScale(0.18)
        node.isHidden = true
        node.name = "TriangleBlue"
        return node
    }()
    
    private var TriangleYellow: SKNode = {
        let node = SKSpriteNode(imageNamed: "TriangleYellow")
        node.position = CGPoint(x: 99.5, y: 118)
        node.setScale(0.18)
        node.isHidden = true
        node.name = "TriangleYellow"
        return node
    }()
    
    private var TriangleRed: SKNode = {
        let node = SKSpriteNode(imageNamed: "TriangleRed")
        node.position = CGPoint(x: 117.5, y: 92.5)
        node.setScale(0.18)
        node.isHidden = true
        node.name = "TriangleRed"
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
        self.addChild(TriangleBlue)
        self.addChild(TriangleYellow)
        self.addChild(TriangleRed)
        self.addChild(yellowText)
        self.addChild(yellowArrow)
        self.addChild(blueText)
        self.addChild(blueArrow)
        self.addChild(redText)
        self.addChild(redArrow)
        
        let fadeAndRemove = SKAction.sequence([.fadeOut(withDuration: 0.5), .removeFromParent()])
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
    
    var flagBlue: Bool = false
    var flagYellow: Bool = false
    var flagRed: Bool = false
    override public func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        for touch in touches {
            let location = touch.location(in: self)
            
            if (self.atPoint(location).contains(self.TriangleYellow.position)) {
                self.TriangleYellow.isHidden = false
                
                let nodes = self.nodes(at: location)
                if (nodes[0].name?.contains("TriangleYellow")) == false && (flagYellow == false) {
                    self.TriangleYellow.isHidden = true
                } else {
                    flagYellow = true
                }
            }
            
            if (self.atPoint(location).contains(self.TriangleBlue.position)) {
                self.TriangleBlue.isHidden = false
                let nodes = self.nodes(at: location)
                if (nodes[0].name?.contains("TriangleBlue") == false) && (flagBlue == false) {
                    self.TriangleBlue.isHidden = true
                } else {
                    flagBlue = true
                }
            }
            
            if (self.atPoint(location).contains(self.TriangleRed.position)) {
                self.TriangleRed.isHidden = false
                let nodes = self.nodes(at: location)
                if (nodes[0].name?.contains("TriangleRed") == false) && (flagRed == false)  {
                    self.TriangleRed.isHidden = true
                } else {
                    flagRed = true
                }
            }
            
            if (self.TriangleYellow.isHidden == false && self.TriangleRed.isHidden == false) && (self.TriangleBlue.isHidden == false) {
                PlaygroundPage.current.assessmentStatus = .pass(message: "Let's see the next page! [Go to next page](@next)")
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
