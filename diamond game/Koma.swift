//
//  Koma.swift
//  diamond game
//
//  Created by Matsui Lab on 2018/12/01.
//  Copyright © 2018年 kohei uno. All rights reserved.
//

import Foundation
import UIKit

class Koma{
    var x:Int
    var y:Int
    var mitame:CAShapeLayer
    var team:Team
    /*
     初期化/イニシャライザ
     引数 :  x - x座標
            y - y座標
            team - 今のチーム
            view - その駒を表示するビュー
     */
    init(x:Int,y:Int,team:Team,view:UIView) {
        self.x = x
        self.y = y
        self.team = team
        self.mitame = Mitame.getMitame(x: x, y: y, team: team)
        view.layer.addSublayer(mitame)
        }
    /*コマの状態の更新
     引数:新しくなるチーム
    ex 無い状態 -> 青
       青　-> 無い状態
     */
    func updateTeam(team:Team,view:UIView){
        self.team = team//指定されたチームに変更
        self.mitame = Mitame.getMitame(x: x, y: y, team: team)//変わったチームに応じて更新（変更）
        view.layer.addSublayer(mitame)
    }
    //x,yの座標を教えてくれる関数
    func getPositions() -> (x:Int,y:Int) {
        return (x:self.x,y:self.y)
    }
    
    
}

