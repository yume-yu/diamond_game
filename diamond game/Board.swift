//
//  Board.swift
//  diamond game
//
//  Created by Matsui Lab on 2018/12/01.
//  Copyright © 2018年 kohei uno. All rights reserved.
//

import Foundation
import UIKit

class Board: UIView {
    var grid : [(x:Int,y:Int,cell:Koma)] = []
    let numOfLines:Int = 17 //ボードの行数
    let centerOfx = 510     //中心のx座標
    let topOfy = 30         //いちばん上の頂点のy座標
    let diff_x = 80         //x座標の間隔
    let diff_y = 40         //y座標の間隔
    var set_x:Int           //今から配置しようとしているx座標
    var set_y:Int           //今から配置しようとしているy座標
    /*一行あたりの行数を返す関数
    引数:何行目か
    戻り値:その行のマスの数
 */
    func getNumInRow(lineNum:Int) -> Int {
        switch lineNum {
        case 1:
            return 1
        case 2:
            return 2
        case 3:
            return 3
        case 4:
            return 4
        case 5:
            return 13
        case 6:
            return 12
        case 7:
            return 11
        case 8:
            return 10
        case 9:
            return 9
        case 10:
            return 10
        case 11:
            return 11
        case 12:
            return 12
        case 13:
            return 13
        case 14:
            return 4
        case 15:
            return 3
        case 16:
            return 2
        case 17:
            return 1
        default:
            return 0
        }
    }
    
    func initBoard(){
        for i:Int in 1 ... numOfLines{
            for j:Int in 1 ... getNumInRow(lineNum: i){
                if((i % 2) == 1){
                    if(j == (getNumInRow(lineNum: i) / 2) + 1){
                        set_x = centerOfx
                    }else if(j < (getNumInRow(lineNum: i) / 2) + 1){
                        set_x = centerOfx - (getNumInRow(lineNum: i) / 2 - j) * diff_x
                    }else if(j > (getNumInRow(lineNum: i) / 2) + 1){
                        set_x = centerOfx + (j - getNumInRow(lineNum: i) / 2) * diff_x
                    }
                }else{
                    if(j <= (getNumInRow(lineNum: i) / 2)){
                        set_x = (centerOfx - diff_x / 2) - (getNumInRow(lineNum: i) / 2 - (j + 1)) * diff_x
                    }else if(j > (getNumInRow(lineNum: i) / 2)){
                        set_x = (centerOfx + diff_x / 2) + ((j - 1) - getNumInRow(lineNum: i) / 2) * diff_x
                    }
                }
                set_y = topOfy + diff_x * i
                grid.append((x: set_x, y: set_y, cell: Koma.init(x: set_x, y: set_y, team: Team.nai, view: self)))
            }
        }
    }
}
