//
//  ViewController.swift
//  粒子动画
//
//  Created by zhangzhifu on 2017/2/24.
//  Copyright © 2017年 seemygo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        // 1. 创建一个发射器
        let emitter = CAEmitterLayer()
        
        // 2. 设置发射器的位置
        emitter.emitterPosition = CGPoint(x: view.bounds.width * 0.5, y: 100)
        
        // 3. 开启三维效果
        emitter.preservesDepth = true
        
        // 4. 创建粒子
        // 4.1 创建粒子
        let cell = CAEmitterCell()
        // 4.2 设置粒子属性(一秒钟发射多少粒子)
        cell.birthRate = 10
        // 4.3 设置粒子的生存时间
        cell.lifetime = 5
        cell.lifetimeRange = 2
        // 4.4 设置粒子缩放
        cell.scale = 0.7
        cell.scaleRange = 0.2
        // 4.5 设置粒子方向
        cell.emissionLongitude = CGFloat(M_PI_2)
        cell.emissionRange = CGFloat(M_PI_4)
        // 4.6 设置粒子的速度
        cell.velocity = 100
        cell.velocityRange = 30
        // 4.7 设置粒子图片
        cell.contents = UIImage(named: "good5_30x30_")?.cgImage
        // 4.8 旋转效果
        cell.spin = 1.0
        cell.spinRange = 0.3
        
        // 5. 给发射器设置粒子
        emitter.emitterCells = [cell]
        
        // 6. 将发射器添加到其他图层中
        view.layer.addSublayer(emitter)
    }
}

