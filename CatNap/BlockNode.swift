//
//  BlockNode.swift
//  CatNap
//
//  Created by Chris Searcy on 3/1/16.
//  Copyright © 2016 Chris Searcy. All rights reserved.
//

import Foundation
import SpriteKit

class BlockNode: SKSpriteNode, CustomNodeEvents, InteractiveNode {
	
	func didMoveToScene() {
		userInteractionEnabled = true
	}
	
	func interact() {
		userInteractionEnabled = false
		
		runAction(SKAction.sequence([SKAction.playSoundFileNamed("pop.mp3", waitForCompletion: false), SKAction.scaleTo(0.8, duration: 0.1), SKAction.removeFromParent()]))
	}
	
	override func touchesEnded(touches: Set<UITouch>, withEvent event: UIEvent?) {
		super.touchesEnded(touches, withEvent: event)
		print("destroy block")
		interact()
	}
	
}
