//
//  TitleUI.swift
//  MiniMiner
//
//  Created by Elias Bickel (student LM) on 12/5/16.
//  Copyright © 2016 Pixelaborate. All rights reserved.
//

import Foundation
import SpriteKit

class TitleUI{
    let startButton: SKButton
    let stockButton: SKButton
    let miniButton: SKButton
    
    let uiLayer: SKNode
    
    init()
    {
        let startTexture = SKTexture(imageNamed: "Pickaxe")
        startButton = SKButton(position: CGPoint(x: 620, y: 360), texture: startTexture, size: CGSize(width: 128, height: 128))
        
        let stockTexture = SKTexture(imageNamed: "Hammer")
        stockButton = SKButton(position: CGPoint(x: 800, y: 360), texture: stockTexture, size: CGSize(width: 128, height: 128))
        
        miniButton = SKButton(position: CGPoint(x: 0, y: 0), texture: stockTexture, size: CGSize(width: 1, height: 1))
        
        uiLayer = SKNode()
        
        uiLayer.addChild(miniButton)
        uiLayer.addChild(startButton)
        uiLayer.addChild(stockButton)
    }
    
    func update(_ game: Game)
    {
        if(startButton.selected)
        {
            game.ChangeScene(UndergroundScene(game), transition: SKTransition.crossFade(withDuration: 0.3))
        }
    }
    
}
