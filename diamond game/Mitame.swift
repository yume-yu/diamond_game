//
//  Mitame.swift
//  diamond game
//
//  Created by Matsui Lab on 2018/12/01.
//  Copyright © 2018年 kohei uno. All rights reserved.
//

import Foundation
import UIKit

class Mitame{
    static let width = 20
    static let height = 20
    
    class func getMitame(x:Int,y:Int,team:Team) -> CAShapeLayer {
        var returnMitame:CAShapeLayer = CAShapeLayer.init()
        returnMitame.lineWidth = 1.0
        returnMitame.strokeColor = UIColor.black.cgColor
        returnMitame.path = UIBezierPath(ovalIn:CGRect(x:x,y:y,width:width,height:height)).cgPath
        switch team {
        case Team.red:
            returnMitame.fillColor = UIColor.red.cgColor
        case Team.blue:
            returnMitame.fillColor = UIColor.blue.cgColor
        case Team.yellow:
            returnMitame.fillColor = UIColor.yellow.cgColor
        case Team.nai:
            returnMitame.fillColor = UIColor.clear.cgColor
            }
        return returnMitame
    }
}
