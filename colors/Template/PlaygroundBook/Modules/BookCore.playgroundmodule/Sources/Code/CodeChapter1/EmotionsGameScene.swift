//
//  ColorsGameScene.swift
//  BookCore
//
//  Created by Beatriz Carlos on 15/04/21.
//

import PlaygroundSupport
import SpriteKit
import UIKit

public class EmotionsGameScene: SKScene {
    var backgroundColorCustom = UIColor(red: 0.99, green: 0.97, blue: 0.92, alpha: 1.00)
    
    // nodes
    private var sad: SKNode = {
        let node = SKSpriteNode(imageNamed: "sad")
        node.setScale(0.1)
        node.position = CGPoint(x: 100, y: 100)
        node.name = "sad"
        node.isUserInteractionEnabled = false;
        return node
    }()
    
    private var happy: SKNode = {
        let node = SKSpriteNode(imageNamed: "happy")
        node.setScale(0.1)
        node.position = CGPoint(x: 100, y: 100)
        node.zPosition = -1
        node.alpha = 0
        node.name = "happy"
        return node
    }()
    
    
    override public func didMove(to view: SKView) {
        self.backgroundColor = backgroundColorCustom
        
        self.addChild(sad)
        self.addChild(happy)
    }
    
    @objc static override public var supportsSecureCoding: Bool {
        // SKNode conforms to NSSecureCoding, so any subclass going
        // through the decoding process must support secure coding
        get {
            return true
        }
    }
    
    func touchDown(atPoint pos : CGPoint) {
        print(pos)
        sad.position = pos
    }
    
    func touchMoved(toPoint pos : CGPoint) {
    }
    
    func touchUp(atPoint pos : CGPoint) {
    }
    
    override public func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        for t in touches {
          let node = self.atPoint(t.location(in :self))
          if(node.name == "sad") {
            sad.alpha = 0
            self.backgroundColor = UIColor(red: 0.99, green: 0.91, blue: 0.70, alpha: 1.00)
            happy.alpha = 1

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
