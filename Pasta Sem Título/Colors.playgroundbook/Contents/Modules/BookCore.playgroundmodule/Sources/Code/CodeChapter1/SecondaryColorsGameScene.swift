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
        node.fillColor = .white
        node.lineWidth = 1
        return node
    }()
    
    private var secondaryColorsText: SKNode = {
        let node = SKSpriteNode(imageNamed: "SecondaryColorsText")
        node.position = CGPoint(x: 100, y: 170)
        node.setScale(0.15)
        return node
    }()
    
    // row 1
    private var yellowBoldTextTwo: SKNode = {
        let node = SKSpriteNode(imageNamed: "YellowBold")
        node.position = CGPoint(x: 65, y: 155)
        node.setScale(0.12)
        node.isUserInteractionEnabled = false
        return node
    }()
    
    // UIColor.PrimaryColors.yellow
    private var circleYellow: SKShapeNode = {
        let node = SKShapeNode(circleOfRadius: 10)
        node.fillColor = .white
        node.strokeColor = SKColor.clear
        node.position = CGPoint(x: 65, y: 140)
        node.name = "circleYellow"
        node.isUserInteractionEnabled = false
        return node
    }()
    
    private var plus: SKNode = {
        let node = SKSpriteNode(imageNamed: "plus")
        node.position = CGPoint(x: 80, y: 140)
        node.name = "plus"
        node.setScale(0.10)
        return node
    }()
    
    private var redBoldText: SKNode = {
        let node = SKSpriteNode(imageNamed: "RedBold")
        node.position = CGPoint(x: 95, y: 155)
        node.setScale(0.12)
        return node
    }()
    
    // UIColor.PrimaryColors.red
    private var circleRed: SKShapeNode = {
        let node = SKShapeNode(circleOfRadius: 10)
        node.fillColor = .white
        node.strokeColor = SKColor.clear
        node.position = CGPoint(x: 95, y: 140)
        node.name = "circleRed"
        node.zPosition = 1
        node.isUserInteractionEnabled = false
        return node
    }()
    
    private var orangeBoldText: SKNode = {
        let node = SKSpriteNode(imageNamed: "OrangeBold")
        node.position = CGPoint(x: 130, y: 155)
        node.setScale(0.12)
        return node
    }()
    
    private var equal: SKNode = {
        let node = SKSpriteNode(imageNamed: "equal")
        node.position = CGPoint(x: 112, y: 140)
        node.setScale(0.10)
        return node
    }()
    
    // UIColor.SecondaryColors.orange
    private var circleOrange: SKShapeNode = {
        let node = SKShapeNode(circleOfRadius: 10)
        node.fillColor = .white
        node.strokeColor = SKColor.clear
        node.position = CGPoint(x: 130, y: 140)
        node.name = "circleOrange"
        node.isUserInteractionEnabled = false
        return node
    }()
    
    // row 2
    private var blueBoldTextTwo: SKNode = {
        let node = SKSpriteNode(imageNamed: "BlueBold")
        node.position = CGPoint(x: 65, y: 115)
        node.setScale(0.12)
        return node
    }()
    
    // UIColor.PrimaryColors.blue
    private var circleBlue: SKShapeNode = {
        let node = SKShapeNode(circleOfRadius: 10)
        node.fillColor = .white
        node.strokeColor = SKColor.clear
        node.position = CGPoint(x: 65, y: 100)
        node.name = "circleBlue"
        node.isUserInteractionEnabled = false
        return node
    }()
    
    private var plusTwo: SKNode = {
        let node = SKSpriteNode(imageNamed: "plus")
        node.position = CGPoint(x: 80, y: 100)
        node.setScale(0.10)
        return node
    }()
    
    private var yellowBoldText: SKNode = {
        let node = SKSpriteNode(imageNamed: "YellowBold")
        node.position = CGPoint(x: 95, y: 115)
        node.setScale(0.12)
        return node
    }()
    
    // UIColor.PrimaryColors.yellow
    private var circleYellowTwo: SKShapeNode = {
        let node = SKShapeNode(circleOfRadius: 10)
        node.fillColor = .white
        node.strokeColor = SKColor.clear
        node.position = CGPoint(x: 95, y: 100)
        node.name = "circleYellowTwo"
        node.isUserInteractionEnabled = false
        return node
    }()
    
    private var equalTwo: SKNode = {
        let node = SKSpriteNode(imageNamed: "equal")
        node.position = CGPoint(x: 112, y: 100)
        node.setScale(0.10)
        return node
    }()
    
    private var greenBoldText: SKNode = {
        let node = SKSpriteNode(imageNamed: "GreenBold")
        node.position = CGPoint(x: 130, y: 115)
        node.setScale(0.12)
        return node
    }()
    
    // UIColor.SecondaryColors.green
    private var circleGreen: SKShapeNode = {
        let node = SKShapeNode(circleOfRadius: 10)
        node.fillColor = .white
        node.strokeColor = SKColor.clear
        node.position = CGPoint(x: 130, y: 100)
        node.name = "circleGreen"
        node.isUserInteractionEnabled = false
        return node
    }()
    
    //row 3
    private var redBoldTextTwo: SKNode = {
        let node = SKSpriteNode(imageNamed: "RedBold")
        node.position = CGPoint(x: 65, y: 75)
        node.setScale(0.12)
        return node
    }()
    
    // UIColor.PrimaryColors.red
    private var circleRedTwo: SKShapeNode = {
        let node = SKShapeNode(circleOfRadius: 10)
        node.fillColor = .white
        node.strokeColor = SKColor.clear
        node.position = CGPoint(x: 65, y: 60)
        node.name = "circleRedTwo"
        node.isUserInteractionEnabled = false
        return node
    }()
    
    private var plusThree: SKNode = {
        let node = SKSpriteNode(imageNamed: "plus")
        node.position = CGPoint(x: 80, y: 60)
        node.name = "plusThree"
        node.setScale(0.10)
        return node
    }()
    
    private var blueBoldText: SKNode = {
        let node = SKSpriteNode(imageNamed: "BlueBold")
        node.position = CGPoint(x: 95, y: 75)
        node.setScale(0.12)
        node.name = "blueBoldText"
        return node
    }()
    
    // UIColor.PrimaryColors.blue
    private var circleBlueTwo: SKShapeNode = {
        let node = SKShapeNode(circleOfRadius: 10)
        node.fillColor = .white
        node.strokeColor = SKColor.clear
        node.position = CGPoint(x: 95, y: 60)
        node.zPosition = 1
        node.name = "circleBlueTwo"
        node.isUserInteractionEnabled = false
        return node
    }()
    
    private var equalThree: SKNode = {
        let node = SKSpriteNode(imageNamed: "equal")
        node.position = CGPoint(x: 112, y: 60)
        node.setScale(0.10)
        return node
    }()
    
    private var PurpleBoldText: SKNode = {
        let node = SKSpriteNode(imageNamed: "PurpleBold")
        node.position = CGPoint(x: 130, y: 75)
        node.setScale(0.12)
        node.name = "PurpleBoldText"
        node.isUserInteractionEnabled = false
        return node
    }()
    
    // UIColor.SecondaryColors.purple
    private var circlePurple: SKShapeNode = {
        let node = SKShapeNode(circleOfRadius: 10)
        node.fillColor = .white
        node.strokeColor = SKColor.clear
        node.position = CGPoint(x: 130, y: 60)
        node.name = "circlePurple"
        node.zPosition = 1
        node.isUserInteractionEnabled = false
        return node
    }()
    
    override public func didMove(to view: SKView) {
        self.backgroundColor = backgroundColorCustom
        
        self.addChild(secondaryColorsText)
        
        //row 1
        self.addChild(yellowBoldTextTwo)
        self.addChild(circleYellow)
        
        self.addChild(plus)
        
        self.addChild(redBoldText)
        self.addChild(circleRed)
        
        self.addChild(equal)
        
        self.addChild(orangeBoldText)
        self.addChild(circleOrange)
        
        //row 2
        self.addChild(blueBoldTextTwo)
        self.addChild(circleBlue)
        
        self.addChild(plusTwo)
        
        self.addChild(yellowBoldText)
        self.addChild(circleYellowTwo)
        
        self.addChild(equalTwo)
        
        self.addChild(greenBoldText)
        self.addChild(circleGreen)
        
        //row 3
        self.addChild(redBoldTextTwo)
        self.addChild(circleRedTwo)
        
        self.addChild(plusThree)
        
        self.addChild(blueBoldText)
        self.addChild(circleBlueTwo)
        
        self.addChild(equalThree)
        
        self.addChild(PurpleBoldText)
        self.addChild(circlePurple)
        
        let fadeAndRemove = SKAction.sequence([.scale(to: 1, duration: 0.15), .scale(to: 0.5, duration: 0.2), .removeFromParent()])
        spinnyNode.run(fadeAndRemove)
    }
    
    @objc static override public var supportsSecureCoding: Bool {
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
    
    var changeColorsCicle: [String] = []
    override public func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        guard let n = spinnyNode.copy() as? SKShapeNode else { return }
        
        for t in touches {
            let node = self.atPoint(t.location(in :self))
            n.fillColor = .white
            
            changeColor(node: node, circleNode: self.circleYellow, textNode: "circleYellow", color: UIColor.PrimaryColors.yellow)
            changeColor(node: node, circleNode: self.circleRed, textNode: "circleRed", color: UIColor.PrimaryColors.red)
            
            changeColor(node: node, circleNode: self.circleBlue, textNode: "circleBlue", color: UIColor.PrimaryColors.blue)
            changeColor(node: node, circleNode: self.circleYellowTwo, textNode: "circleYellowTwo", color: UIColor.PrimaryColors.yellow)
            
            changeColor(node: node, circleNode: self.circleRedTwo, textNode: "circleRedTwo", color: UIColor.PrimaryColors.red)
            changeColor(node: node, circleNode: self.circleBlueTwo, textNode: "circleBlueTwo", color: UIColor.PrimaryColors.blue)
            
            if self.changeColorsCicle.contains("circleRedTwo") &&  self.changeColorsCicle.contains("circleBlueTwo") {
                self.circlePurple.fillColor = .purple
            }
            
            if self.changeColorsCicle.contains("circleBlue") &&  self.changeColorsCicle.contains("circleYellowTwo") {
                self.circleGreen.fillColor = UIColor.SecondaryColors.green
            }
            
            if self.changeColorsCicle.contains("circleYellow") &&  self.changeColorsCicle.contains("circleRed") {
                self.circleOrange.fillColor = UIColor.SecondaryColors.orange
            }
            
            if self.changeColorsCicle.count == 6 {
                PlaygroundPage.current.assessmentStatus = .pass(message: "Let's see the next page! [Go to next page](@next)")
            }
        }
    }
    
    func changeColor(node: SKNode, circleNode: SKShapeNode, textNode: String, color: UIColor) {
        if let purpleCircleNode = node.name, purpleCircleNode == textNode {
            let changeColor : UIColor = (circleNode.fillColor == color) ? .gray : color
            circleNode.run(shapeColorChangeAction(from: .white, to: changeColor, withDuration: 1.5))
            
            self.changeColorsCicle.append(textNode)
        }
    }
    
    override public func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
    }
    
    override public func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
    }
    
    override public func touchesCancelled(_ touches: Set<UITouch>, with event: UIEvent?) {
        for t in touches { touchUp(atPoint: t.location(in: self)) }
    }
    
    override public func update(_ currentTime: TimeInterval) {
        // Called before each frame is rendered
    }
    
    private func shapeColorChangeAction(from fromColor: UIColor, to toColor: UIColor, withDuration duration: TimeInterval) -> SKAction {
        
        func components(for color: UIColor) -> [CGFloat] {
            var comp = color.cgColor.components!
            if comp.count < 4 {
                comp.insert(comp[0], at: 0)
                comp.insert(comp[0], at: 0)
            }
            return comp
        }
        
        func lerp(a: CGFloat, b: CGFloat, fraction: CGFloat) -> CGFloat {
            return (b-a) * fraction + a
        }
        
        let fromComp = components(for: fromColor)
        let toComp = components(for: toColor)
        let durationCGFloat = CGFloat(duration)
        return SKAction.customAction(withDuration: duration, actionBlock: { (node, elapsedTime) -> Void in
            let fraction = elapsedTime / durationCGFloat
            let transColor = UIColor(red: lerp(a: fromComp[0], b: toComp[0], fraction: fraction),
                                     green: lerp(a: fromComp[1], b: toComp[1], fraction: fraction),
                                     blue: lerp(a: fromComp[2], b: toComp[2], fraction: fraction),
                                     alpha: lerp(a: fromComp[3], b: toComp[3], fraction: fraction))
            (node as! SKShapeNode).fillColor = transColor
        })
    }
}
