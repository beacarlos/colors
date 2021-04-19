//
//  ColorsGameScene.swift
//  BookCore
//
//  Created by Beatriz Carlos on 15/04/21.
//

import PlaygroundSupport
import SpriteKit
import UIKit

public class ThankYouGameScene: SKScene {
    var backgroundColorCustom = UIColor(red: 0.99, green: 0.97, blue: 0.92, alpha: 1.00)
    
    // nodes
    private var letterT: SKNode = {
        let node = SKSpriteNode(imageNamed: "t")
//        node.position = CGPoint(x: 75, y: 100)
        node.setScale(0.15)
        return node
    }()

    private var letterH: SKNode = {
        let node = SKSpriteNode(imageNamed: "h")
        node.setScale(0.15)
        return node
    }()
    
    private var letterA: SKNode = {
        let node = SKSpriteNode(imageNamed: "a")
        node.setScale(0.15)
        return node
    }()
    
    private var letterN: SKNode = {
        let node = SKSpriteNode(imageNamed: "n")
        node.setScale(0.15)
        return node
    }()
    
    private var letterK: SKNode = {
        let node = SKSpriteNode(imageNamed: "k")
        node.setScale(0.15)
        return node
    }()
    
    private var letterY: SKNode = {
        let node = SKSpriteNode(imageNamed: "y")
        node.setScale(0.15)
        return node
    }()
    
    private var letterO: SKNode = {
        let node = SKSpriteNode(imageNamed: "o")
        node.setScale(0.15)
        return node
    }()
    
    private var letterU: SKNode = {
        let node = SKSpriteNode(imageNamed: "u")

        node.setScale(0.15)
        return node
    }()
    
    override public func didMove(to view: SKView) {
        self.backgroundColor = backgroundColorCustom
        
        self.addChild(letterT)
        self.addChild(letterH)
        self.addChild(letterA)
        self.addChild(letterN)
        self.addChild(letterK)
        
        self.addChild(letterY)
        self.addChild(letterO)
        self.addChild(letterU)

        self.moveLetterAction(node: letterT, x: 75, y: 100)
        self.moveLetterAction(node: letterH, x: 87, y: 100)
        self.moveLetterAction(node: letterA, x: 100, y: 100)
        self.moveLetterAction(node: letterN, x: 113, y: 100)
        self.moveLetterAction(node: letterK, x: 126, y: 100)

        self.moveLetterAction(node: letterY, x: 87, y: 80)
        self.moveLetterAction(node: letterO, x: 100, y: 80)
        self.moveLetterAction(node: letterU, x: 113, y: 80)

    }
    
    private func moveLetterAction(node: SKNode, x: CGFloat, y: CGFloat = 100, duration: TimeInterval = 0.5) {
        let movePlayerAction = SKAction.sequence([.moveTo(x: x, duration: duration), .moveTo(y: y, duration: duration)])
        node.run(movePlayerAction)
    }
}
