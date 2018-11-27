//
//  EditWindow.swift
//  diamond game
//
//  Created by Matsui Lab on 2018/08/24.
//  Copyright © 2018年 kohei uno. All rights reserved.
//

import UIKit

class EditWindow: UIView {

    
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
        
        let a1 = UIBezierPath();
        a1.move(to: CGPoint(x: 40, y: 200));
        a1.addLine(to: CGPoint(x: 1000, y: 200));
        a1.addLine(to: CGPoint(x: 520, y: 680));
        a1.addLine(to: CGPoint(x: 40, y: 200));
        UIColor.black.setStroke()
        a1.lineWidth = 6
        a1.stroke();
        
        let a2 = UIBezierPath();
        a2.move(to: CGPoint(x: 40, y: 520));
        a2.addLine(to: CGPoint(x: 1000, y: 520));
        a2.addLine(to: CGPoint(x: 520, y: 40));
        a2.addLine(to: CGPoint(x: 40, y: 520));
        UIColor.black.setStroke()
        a2.lineWidth = 6
        a2.stroke();
        
        for  x  in stride(from: 40, to: 480, by: 40){
            let a3 = UIBezierPath();
            a3.move(to: CGPoint(x: 520 - x, y: x + 40))
            a3.addLine(to: CGPoint(x: 520 + x, y: x + 40))
            a3.lineWidth = 3
            a3.stroke();
        }
       
        for  x  in stride(from: 40, to: 480, by: 40){
            let a3 = UIBezierPath();
            a3.move(to: CGPoint(x: 520 - x, y: 680 - x))
            a3.addLine(to: CGPoint(x: 520 + x, y: 680 - x))
            a3.lineWidth = 3
            a3.stroke();
        }
 
        var p = 1
        for  x  in stride(from: 40, to: 520, by: 40){
            let a4 = UIBezierPath();
            a4.move(to: CGPoint(x: x, y: 560 - x))
            a4.addLine(to: CGPoint(x: 40 * p, y: 520))
            a4.lineWidth = 3
            a4.stroke();
            p = p + 2
        }
        
        
        var q = 0
        for  x  in stride(from: 1000, to: 520, by: -40){
            let a5 = UIBezierPath();
            a5.move(to: CGPoint(x: x, y: x - 480))
            a5.addLine(to: CGPoint(x: 1000 - 40 * q, y: 520))
            a5.lineWidth = 3
            a5.stroke();
            q = q + 2
        }
        
        var k = 1
        for  x  in stride(from: 40, to: 520, by: 40){
            let a6 = UIBezierPath();
            a6.move(to: CGPoint(x: x, y: 160 + x))
            a6.addLine(to: CGPoint(x: 40 * k, y: 200))
            a6.lineWidth = 3
            a6.stroke();
            k = k + 2
        }
 
        var j = 0
        for  x  in stride(from: 1000, to: 520, by: -40){
            let a7 = UIBezierPath();
            a7.move(to: CGPoint(x: x, y: 200 + 20 * j))
            a7.addLine(to: CGPoint(x: 1000 - 40 * j, y: 200))
            a7.lineWidth = 3
            a7.stroke();
            j = j + 2
        }

    
        let r1 = CAShapeLayer.init()
            r1.strokeColor = UIColor.black.cgColor
            r1.fillColor = UIColor.red.cgColor
            r1.lineWidth = 1.0
            r1.path = UIBezierPath(ovalIn: CGRect(x: 990, y: 190, width: 20, height: 20)).cgPath
            self.layer.addSublayer(r1)
      
        let r2 = CAShapeLayer.init()
            r2.strokeColor = UIColor.black.cgColor
            r2.fillColor = UIColor.red.cgColor
            r2.lineWidth = 1.0
            r2.path = UIBezierPath(ovalIn: CGRect(x: 910, y: 190, width: 20, height: 20)).cgPath
            self.layer.addSublayer(r2)
        
        let r3 = CAShapeLayer.init()
            r3.strokeColor = UIColor.black.cgColor
            r3.fillColor = UIColor.red.cgColor
            r3.lineWidth = 1.0
            r3.path = UIBezierPath(ovalIn: CGRect(x: 950, y: 230, width: 20, height: 20)).cgPath
            self.layer.addSublayer(r3)
        
        let r4 = CAShapeLayer.init()
            r4.strokeColor = UIColor.black.cgColor
            r4.fillColor = UIColor.red.cgColor
            r4.lineWidth = 1.0
            r4.path = UIBezierPath(ovalIn: CGRect(x: 830, y: 190, width: 20, height: 20)).cgPath
            self.layer.addSublayer(r4)
        
        let r5 = CAShapeLayer.init()
            r5.strokeColor = UIColor.black.cgColor
            r5.fillColor = UIColor.red.cgColor
            r5.lineWidth = 1.0
            r5.path = UIBezierPath(ovalIn: CGRect(x: 870, y: 230, width: 20, height: 20)).cgPath
            self.layer.addSublayer(r5)
        
        let r6 = CAShapeLayer.init()
            r6.strokeColor = UIColor.black.cgColor
            r6.fillColor = UIColor.red.cgColor
            r6.lineWidth = 1.0
            r6.path = UIBezierPath(ovalIn: CGRect(x: 910, y: 270, width: 20, height: 20)).cgPath
            self.layer.addSublayer(r6)
        
        let r7 = CAShapeLayer.init()
            r7.strokeColor = UIColor.black.cgColor
            r7.fillColor = UIColor.red.cgColor
            r7.lineWidth = 1.0
            r7.path = UIBezierPath(ovalIn: CGRect(x: 750, y: 190, width: 20, height: 20)).cgPath
            self.layer.addSublayer(r7)
        
        let r8 = CAShapeLayer.init()
            r8.strokeColor = UIColor.black.cgColor
            r8.fillColor = UIColor.red.cgColor
            r8.lineWidth = 1.0
            r8.path = UIBezierPath(ovalIn: CGRect(x: 790, y: 230, width: 20, height: 20)).cgPath
            self.layer.addSublayer(r8)
        
        let r9 = CAShapeLayer.init()
            r9.strokeColor = UIColor.black.cgColor
            r9.fillColor = UIColor.red.cgColor
            r9.lineWidth = 1.0
            r9.path = UIBezierPath(ovalIn: CGRect(x: 830, y: 270, width: 20, height: 20)).cgPath
            self.layer.addSublayer(r9)
        
        let r10 = CAShapeLayer.init()
            r10.strokeColor = UIColor.black.cgColor
            r10.fillColor = UIColor.red.cgColor
            r10.lineWidth = 1.0
            r10.path = UIBezierPath(ovalIn: CGRect(x: 870, y: 310, width: 20, height: 20)).cgPath
            self.layer.addSublayer(r10)
        
        let r11 = CAShapeLayer.init()
            r11.strokeColor = UIColor.black.cgColor
            r11.fillColor = UIColor.red.cgColor
            r11.lineWidth = 1.0
            r11.path = UIBezierPath(ovalIn: CGRect(x: 670, y: 190, width: 20, height: 20)).cgPath
            self.layer.addSublayer(r11)
        
        let r12 = CAShapeLayer.init()
            r12.strokeColor = UIColor.black.cgColor
            r12.fillColor = UIColor.red.cgColor
            r12.lineWidth = 1.0
            r12.path = UIBezierPath(ovalIn: CGRect(x: 710, y: 230, width: 20, height: 20)).cgPath
            self.layer.addSublayer(r12)
        
        let r13 = CAShapeLayer.init()
            r13.strokeColor = UIColor.black.cgColor
            r13.fillColor = UIColor.red.cgColor
            r13.lineWidth = 1.0
            r13.path = UIBezierPath(ovalIn: CGRect(x: 750, y: 270, width: 20, height: 20)).cgPath
            self.layer.addSublayer(r13)
        
        let r14 = CAShapeLayer.init()
            r14.strokeColor = UIColor.black.cgColor
            r14.fillColor = UIColor.red.cgColor
            r14.lineWidth = 1.0
            r14.path = UIBezierPath(ovalIn: CGRect(x: 790, y: 310, width: 20, height: 20)).cgPath
            self.layer.addSublayer(r14)
        
        let r15 = CAShapeLayer.init()
            r15.strokeColor = UIColor.black.cgColor
            r15.fillColor = UIColor.red.cgColor
            r15.lineWidth = 1.0
            r15.path = UIBezierPath(ovalIn: CGRect(x: 830, y: 350, width: 20, height: 20)).cgPath
            self.layer.addSublayer(r15)
        
        
        let b1 = CAShapeLayer.init()
            b1.strokeColor = UIColor.black.cgColor
            b1.fillColor = UIColor.blue.cgColor
            b1.lineWidth = 1.0
            b1.path = UIBezierPath(ovalIn: CGRect(x: 30, y: 190, width: 20, height: 20)).cgPath
            self.layer.addSublayer(b1)
        
        let b2 = CAShapeLayer.init()
            b2.strokeColor = UIColor.black.cgColor
            b2.fillColor = UIColor.blue.cgColor
            b2.lineWidth = 1.0
            b2.path = UIBezierPath(ovalIn: CGRect(x: 110, y: 190, width: 20, height: 20)).cgPath
            self.layer.addSublayer(b2)
        
        let b3 = CAShapeLayer.init()
            b3.strokeColor = UIColor.black.cgColor
            b3.fillColor = UIColor.blue.cgColor
            b3.lineWidth = 1.0
            b3.path = UIBezierPath(ovalIn: CGRect(x: 70, y: 230, width: 20, height: 20)).cgPath
            self.layer.addSublayer(b3)
        
        let b4 = CAShapeLayer.init()
            b4.strokeColor = UIColor.black.cgColor
            b4.fillColor = UIColor.blue.cgColor
            b4.lineWidth = 1.0
            b4.path = UIBezierPath(ovalIn: CGRect(x: 190, y: 190, width: 20, height: 20)).cgPath
            self.layer.addSublayer(b4)
        
        let b5 = CAShapeLayer.init()
            b5.strokeColor = UIColor.black.cgColor
            b5.fillColor = UIColor.blue.cgColor
            b5.lineWidth = 1.0
            b5.path = UIBezierPath(ovalIn: CGRect(x: 150, y: 230, width: 20, height: 20)).cgPath
            self.layer.addSublayer(b5)
        
        let b6 = CAShapeLayer.init()
            b6.strokeColor = UIColor.black.cgColor
            b6.fillColor = UIColor.blue.cgColor
            b6.lineWidth = 1.0
            b6.path = UIBezierPath(ovalIn: CGRect(x: 110, y: 270, width: 20, height: 20)).cgPath
            self.layer.addSublayer(b6)
        
        let b7 = CAShapeLayer.init()
            b7.strokeColor = UIColor.black.cgColor
            b7.fillColor = UIColor.blue.cgColor
            b7.lineWidth = 1.0
            b7.path = UIBezierPath(ovalIn: CGRect(x: 270, y: 190, width: 20, height: 20)).cgPath
            self.layer.addSublayer(b7)
    
        let b8 = CAShapeLayer.init()
            b8.strokeColor = UIColor.black.cgColor
            b8.fillColor = UIColor.blue.cgColor
            b8.lineWidth = 1.0
            b8.path = UIBezierPath(ovalIn: CGRect(x: 230, y: 230, width: 20, height: 20)).cgPath
            self.layer.addSublayer(b8)
        
        let b9 = CAShapeLayer.init()
            b9.strokeColor = UIColor.black.cgColor
            b9.fillColor = UIColor.blue.cgColor
            b9.lineWidth = 1.0
            b9.path = UIBezierPath(ovalIn: CGRect(x: 190, y: 270, width: 20, height: 20)).cgPath
            self.layer.addSublayer(b9)
        
        let b10 = CAShapeLayer.init()
            b10.strokeColor = UIColor.black.cgColor
            b10.fillColor = UIColor.blue.cgColor
            b10.lineWidth = 1.0
            b10.path = UIBezierPath(ovalIn: CGRect(x: 150, y: 310, width: 20, height: 20)).cgPath
            self.layer.addSublayer(b10)
        
        let b11 = CAShapeLayer.init()
            b11.strokeColor = UIColor.black.cgColor
            b11.fillColor = UIColor.blue.cgColor
            b11.lineWidth = 1.0
            b11.path = UIBezierPath(ovalIn: CGRect(x: 350, y: 190, width: 20, height: 20)).cgPath
            self.layer.addSublayer(b11)
        
        let b12 = CAShapeLayer.init()
            b12.strokeColor = UIColor.black.cgColor
            b12.fillColor = UIColor.blue.cgColor
            b12.lineWidth = 1.0
            b12.path = UIBezierPath(ovalIn: CGRect(x: 310, y: 230, width: 20, height: 20)).cgPath
            self.layer.addSublayer(b12)
        
        let b13 = CAShapeLayer.init()
            b13.strokeColor = UIColor.black.cgColor
            b13.fillColor = UIColor.blue.cgColor
            b13.lineWidth = 1.0
            b13.path = UIBezierPath(ovalIn: CGRect(x: 270, y: 270, width: 20, height: 20)).cgPath
            self.layer.addSublayer(b13)
        
        let b14 = CAShapeLayer.init()
            b14.strokeColor = UIColor.black.cgColor
            b14.fillColor = UIColor.blue.cgColor
            b14.lineWidth = 1.0
            b14.path = UIBezierPath(ovalIn: CGRect(x: 230, y: 310, width: 20, height: 20)).cgPath
            self.layer.addSublayer(b14)
        
        let b15 = CAShapeLayer.init()
            b15.strokeColor = UIColor.black.cgColor
            b15.fillColor = UIColor.blue.cgColor
            b15.lineWidth = 1.0
            b15.path = UIBezierPath(ovalIn: CGRect(x: 190, y: 350, width: 20, height: 20)).cgPath
            self.layer.addSublayer(b15)
        
        let y1 = CAShapeLayer.init()
            y1.strokeColor = UIColor.black.cgColor
            y1.fillColor = UIColor.yellow.cgColor
            y1.lineWidth = 1.0
            y1.path = UIBezierPath(ovalIn: CGRect(x: 510, y: 670, width: 20, height: 20)).cgPath
            self.layer.addSublayer(y1)
        
        let y2 = CAShapeLayer.init()
            y2.strokeColor = UIColor.black.cgColor
            y2.fillColor = UIColor.yellow.cgColor
            y2.lineWidth = 1.0
            y2.path = UIBezierPath(ovalIn: CGRect(x: 550, y: 630, width: 20, height: 20)).cgPath
            self.layer.addSublayer(y2)
        
        let y3 = CAShapeLayer.init()
            y3.strokeColor = UIColor.black.cgColor
            y3.fillColor = UIColor.yellow.cgColor
            y3.lineWidth = 1.0
            y3.path = UIBezierPath(ovalIn: CGRect(x: 470, y: 630, width: 20, height: 20)).cgPath
            self.layer.addSublayer(y3)
        
        let y4 = CAShapeLayer.init()
            y4.strokeColor = UIColor.black.cgColor
            y4.fillColor = UIColor.yellow.cgColor
            y4.lineWidth = 1.0
            y4.path = UIBezierPath(ovalIn: CGRect(x: 590, y: 590, width: 20, height: 20)).cgPath
            self.layer.addSublayer(y4)
        
        let y5 = CAShapeLayer.init()
            y5.strokeColor = UIColor.black.cgColor
            y5.fillColor = UIColor.yellow.cgColor
            y5.lineWidth = 1.0
            y5.path = UIBezierPath(ovalIn: CGRect(x: 510, y: 590, width: 20, height: 20)).cgPath
            self.layer.addSublayer(y5)
        
        let y6 = CAShapeLayer.init()
            y6.strokeColor = UIColor.black.cgColor
            y6.fillColor = UIColor.yellow.cgColor
            y6.lineWidth = 1.0
            y6.path = UIBezierPath(ovalIn: CGRect(x: 430, y: 590, width: 20, height: 20)).cgPath
            self.layer.addSublayer(y6)
    
        let y7 = CAShapeLayer.init()
            y7.strokeColor = UIColor.black.cgColor
            y7.fillColor = UIColor.yellow.cgColor
            y7.lineWidth = 1.0
            y7.path = UIBezierPath(ovalIn: CGRect(x: 630, y: 550, width: 20, height: 20)).cgPath
            self.layer.addSublayer(y7)
        
        let y8 = CAShapeLayer.init()
            y8.strokeColor = UIColor.black.cgColor
            y8.fillColor = UIColor.yellow.cgColor
            y8.lineWidth = 1.0
            y8.path = UIBezierPath(ovalIn: CGRect(x: 550, y: 550, width: 20, height: 20)).cgPath
            self.layer.addSublayer(y8)
        
        let y9 = CAShapeLayer.init()
            y9.strokeColor = UIColor.black.cgColor
            y9.fillColor = UIColor.yellow.cgColor
            y9.lineWidth = 1.0
            y9.path = UIBezierPath(ovalIn: CGRect(x: 470, y: 550, width: 20, height: 20)).cgPath
            self.layer.addSublayer(y9)
        
        let y10 = CAShapeLayer.init()
            y10.strokeColor = UIColor.black.cgColor
            y10.fillColor = UIColor.yellow.cgColor
            y10.lineWidth = 1.0
            y10.path = UIBezierPath(ovalIn: CGRect(x: 390, y: 550, width: 20, height: 20)).cgPath
            self.layer.addSublayer(y10)
    
        let y11 = CAShapeLayer.init()
            y11.strokeColor = UIColor.black.cgColor
            y11.fillColor = UIColor.yellow.cgColor
            y11.lineWidth = 1.0
            y11.path = UIBezierPath(ovalIn: CGRect(x: 670, y: 510, width: 20, height: 20)).cgPath
            self.layer.addSublayer(y11)
    
        let y12 = CAShapeLayer.init()
            y12.strokeColor = UIColor.black.cgColor
            y12.fillColor = UIColor.yellow.cgColor
            y12.lineWidth = 1.0
            y12.path = UIBezierPath(ovalIn: CGRect(x: 590, y: 510, width: 20, height: 20)).cgPath
            self.layer.addSublayer(y12)
    
        let y13 = CAShapeLayer.init()
            y13.strokeColor = UIColor.black.cgColor
            y13.fillColor = UIColor.yellow.cgColor
            y13.lineWidth = 1.0
            y13.path = UIBezierPath(ovalIn: CGRect(x: 510, y: 510, width: 20, height: 20)).cgPath
            self.layer.addSublayer(y13)
    
        let y14 = CAShapeLayer.init()
            y14.strokeColor = UIColor.black.cgColor
            y14.fillColor = UIColor.yellow.cgColor
            y14.lineWidth = 1.0
            y14.path = UIBezierPath(ovalIn: CGRect(x: 430, y: 510, width: 20, height: 20)).cgPath
            self.layer.addSublayer(y14)
    
        let y15 = CAShapeLayer.init()
            y15.strokeColor = UIColor.black.cgColor
            y15.fillColor = UIColor.yellow.cgColor
            y15.lineWidth = 1.0
            y15.path = UIBezierPath(ovalIn: CGRect(x: 350, y: 510, width: 20, height: 20)).cgPath
            self.layer.addSublayer(y15)
    
    }
    
    
}

 


