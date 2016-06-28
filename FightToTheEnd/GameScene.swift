import SpriteKit

class GameScene: SKScene {
    
    let heroTexture = SKTexture(imageNamed: "hero.png")
    var heroSprite : SKSpriteNode? = nil
    
    override func didMoveToView(view: SKView) {
        var textureArr : [SKTexture] = []
        for i in 0..<4 {
            let texture = SKTexture(rect: CGRectMake(CGFloat(i) * 0.25, 0.25, 0.25, 0.25), inTexture: heroTexture)
            textureArr.append(texture)
        }
        
        self.heroSprite = SKSpriteNode(texture: textureArr[0])
        heroSprite?.size = CGSizeMake(heroTexture.size().width * 0.25, heroTexture.size().height * 0.25)
        heroSprite?.position = CGPointMake(CGRectGetMidX(self.frame), CGRectGetMidY(self.frame))
        self.addChild(heroSprite!)
        heroSprite?.runAction(SKAction.repeatActionForever(SKAction.animateWithTextures(textureArr, timePerFrame: 0.1, resize: false, restore: true)))
    }
}
