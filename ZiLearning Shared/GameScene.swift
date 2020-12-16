//
//  GameScene.swift
//  ZiLearning Shared
//
//  Created by Jerry Chen on 7/11/20.
//

import SpriteKit

class GameScene: SKScene {
    

    
    class func newGameScene() -> GameScene {
        // Load 'GameScene.sks' as an SKScene.
        guard let scene = SKScene(fileNamed: "GameScene") as? GameScene else {
            print("Failed to load GameScene.sks")
            abort()
        }
        
        // Set the scale mode to scale to fit the window
        scene.scaleMode = .aspectFill
        
        return scene
    }
    

    override func didMove(to view: SKView) {
        let backgroup = SKSpriteNode(imageNamed: "bg-1")
//        backgroup.position = CGPoint(x: 0, y: 0)
//        backgroup.anchorPoint = CGPoint(x: 0, y:0)
        print(size.width)
        print(size.height)
        backgroup.zPosition = -1
        addChild(backgroup)
        
    }
    
    override func update(_ currentTime: TimeInterval) {
        // Called before each frame is rendered
    }
}

#if os(iOS) || os(tvOS)
// Touch-based event handling
extension GameScene {

    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {

    }
    
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {

    }
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {

    }
    
    override func touchesCancelled(_ touches: Set<UITouch>, with event: UIEvent?) {

    }
    
   
}
#endif


