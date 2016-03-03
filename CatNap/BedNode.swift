//
//  BedNode.swift
//  CatNap
//
//  Created by Chris Searcy on 2/28/16.
//  Copyright © 2016 Chris Searcy. All rights reserved.
//

import Foundation
import SpriteKit

class BedNode: SKSpriteNode, CustomNodeEvents {
	
	func didMoveToScene() {
		print("bed added to scene")
		let bedBodySize = CGSize(width: 40.0, height: 30.0)
		physicsBody = SKPhysicsBody(rectangleOfSize: bedBodySize)
		physicsBody!.dynamic = false
		
		physicsBody!.categoryBitMask = PhysicsCategory.Bed
		physicsBody!.collisionBitMask = PhysicsCategory.None
	}
	
}