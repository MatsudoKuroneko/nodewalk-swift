//
//  GameScene.swift
//  nodewalk-swift
//
//  Created by Taiki Mike on 12/4/29 H.
//  Copyright © 29 ECoder's（Mike）. All rights reserved.
//

import SpriteKit

class GameScene: SKScene {
    
    let sprite = SKShapeNode(circleOfRadius: 10)
    
    override func didMove(to view: SKView) {
    }
    
    func walk(steps:Double, direction:Double){
        let walkx = sin(Double.pi / 180 * Double(direction + 90)) * (steps)
        let walky = cos(Double.pi / 180 * Double(direction + 90)) * (steps)
        sprite.run(SKAction.moveBy(x: CGFloat(walkx), y: CGFloat(walky), duration: 0.1))
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        sprite.position = CGPoint(x: 10, y: 10)
        addChild(sprite)
    }
    
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        walk(steps: 10, direction: 180)
    }
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
    }
    
    override func touchesCancelled(_ touches: Set<UITouch>, with event: UIEvent?) {
    }
    
    
    override func update(_ currentTime: TimeInterval) {
        // Called before each frame is rendered
    }
}
