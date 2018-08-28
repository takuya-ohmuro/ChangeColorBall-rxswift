//
//  CircleViewModel.swift
//  ChangeColorBall
//
//  Created by takuyaOhmuro on 2018/08/28.
//  Copyright © 2018年 takuyaOhmuro. All rights reserved.
//

import ChameleonFramework
import Foundation
import RxCocoa
import RxSwift

class CircleViewModel {
    var centerVarible = Variable<CGPoint?>(.zero)
    var backgroundColorObservable: Observable<UIColor>!
    
    init() {
        setup()
    }
    func setup() {
        backgroundColorObservable = centerVarible.asObservable()
            .map{ center in
                guard let center = center else { return UIColor.flatten(.black)() }
                
                let red:CGFloat = ((center.x + center.y).truncatingRemainder(dividingBy: 255.0)) / 255.0
                let green:CGFloat = 0.0
                let blue:CGFloat = 0.0
                
                return UIColor.flatten(UIColor(red: red, green: green, blue: blue, alpha: 1.0))()
        }
    }
}
