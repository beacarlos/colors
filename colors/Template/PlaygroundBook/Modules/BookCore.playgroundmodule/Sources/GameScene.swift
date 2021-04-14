import SpriteKit

public class GameScene: SKScene {
    var backgroundColorCustom = UIColor(red: 0.99, green: 0.97, blue: 0.92, alpha: 1.00)
    
    // nodes
    private var letterC: SKNode = {
        let node = SKSpriteNode(imageNamed: "c")
        node.position = CGPoint(x: -135, y: 0)
        node.setScale(0.5)
        return node
    }()
    
    private var letterO1: SKNode = {
        let node = SKSpriteNode(imageNamed: "o1")
        node.position = CGPoint(x: -85, y: 0)
        node.setScale(0.5)
        return node
    }()
    
    private var letterL: SKNode = {
        let node = SKSpriteNode(imageNamed: "l")
        node.position = CGPoint(x: -35, y: 0)
        node.setScale(0.5)
        node.zPosition = -1
        return node
    }()
    
    private var letterO: SKNode = {
        let node = SKSpriteNode(imageNamed: "o")
        node.position = CGPoint(x: 15, y: 0)
        node.setScale(0.5)
        return node
    }()
    
    private var letterR: SKNode = {
        let node = SKSpriteNode(imageNamed: "r")
        node.position = CGPoint(x: 65, y: 0)
        node.setScale(0.5)
        node.zPosition = -1
        return node
    }()
    
    private var letterS: SKNode = {
        let node = SKSpriteNode(imageNamed: "s")
        node.position = CGPoint(x: 115, y: 0)
        node.setScale(0.5)
        node.zPosition = -1
        return node
    }()
    
    override public func didMove(to view: SKView) {
        self.backgroundColor = backgroundColorCustom
        

        self.addChild(letterC)
        self.addChild(letterO1)
        self.addChild(letterL)
        self.addChild(letterO)
        self.addChild(letterR)
        self.addChild(letterS)
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
    }

    override public func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        for t in touches { touchDown(atPoint: t.location(in: self)) }
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
