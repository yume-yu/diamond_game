//
//  Koma.swift
//  diamond game
//
//  Created by Matsui Lab on 2018/12/01.
//  Copyright © 2018年 kohei uno. All rights reserved.
//

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
        view.layer.insertSublayer(mitame, at: 0)
        }
    
    init(){
        x = 0;
        y = 0;
        team = Team.nai;
        mitame = Mitame.getMitame(x: 0, y: 0, team: Team.nai)
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
    
    /**
        自分がタッチされたかどうかを判断する関数
        引数: タッチされた座標(CGPoint型)
        戻り値: 自分がタッチされてたとき　-> 自分自身(Koma型)
               自分がタッチされてなかった -> nul
     **/
    func hitTest(touchedPoint: CGPoint) -> Koma? {
        //タッチされた点と自分の座標の距離をとる
        let distance: CGFloat = pow(pow(CGFloat(self.x + Mitame.width/2) - touchedPoint.x, 2) + pow(CGFloat(self.y + Mitame.height/2) - touchedPoint.y, 2), 1/2)
        //距離が20以下 / 自分の円の範囲内に収まっていたら自分を返す
        if(distance <= 20){
            return self;
        }
        //そうじゃなかったらnilを返す
        return nil;
    }
    
    func switchSelected(){
        self.mitame.strokeColor = UIColor.green.cgColor
        self.mitame.lineWidth = 5;
    }
    
    func switchUnSelected(){
        self.mitame.strokeColor = UIColor.black.cgColor
        self.mitame.lineWidth = 1;
    }
}

