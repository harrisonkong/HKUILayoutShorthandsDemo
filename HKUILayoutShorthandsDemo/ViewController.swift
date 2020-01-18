//
//  ViewController.swift
//  HKUILayoutShorthandsDemo
//

///  MIT License
///
///  Copyright (c) 2020 Harrison Kong
///
///  Permission is hereby granted, free of charge, to any person obtaining a copy
///  of this software and associated documentation files (the "Software"), to deal
///  in the Software without restriction, including without limitation the rights
///  to use, copy, modify, merge, publish, distribute, sublicense, and/or sell/
///  copies of the Software, and to permit persons to whom the Software is
///  furnished to do so, subject to the following conditions:
///
///  The above copyright notice and this permission notice shall be included in all
///  copies or substantial portions of the Software.
///
///  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
///  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
///  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
///  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
///  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
///  OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
///  SOFTWARE.

import UIKit
import HKUILayoutShorthands

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .brown
        
        let label = UILabel()
        view.addSubview(label)
        label.backgroundColor = UIColor.gray.withAlphaComponent(0.5)
        label.textColor = .white
        label.textAlignment = .left
        label.text = "HKUILayoutShorthands Demo"
        label.anchorSetWidthToSafeAreaWidthOf(view, multiplier: 0.8)
        label.anchorSetHeightToConstant(50.0)
        label.anchorAlignTopWithSafeAreaTopOf(view, offset: 40.0)
        label.anchorAlignLeftWithSafeAreaLeftOf(view)
        
        let redView = UIView()
        redView.backgroundColor = UIColor.red.withAlphaComponent(0.5)
        view.addSubview(redView)
        redView.anchorSetWidthToWidthOf(view, multiplier: 0.5)
        redView.anchorSetHeightToHeightOf(view, multiplier: 0.5)
        redView.anchorAlignCentersWith(view)
        
        let blueView = UIView()
        blueView.backgroundColor = UIColor.blue.withAlphaComponent(0.15)
        view.addSubview(blueView)
        
        blueView.anchorSetHeightToHeightOf(redView, multiplier: 0.3)
        blueView.anchorSetWidthToWidthOf(redView, multiplier: 0.5)
        blueView.anchorAlignVerticalCenterWithTopOf(redView)
        blueView.anchorAlignHorizontalCentersWith(redView)
        
        let logo = UIImageView(image: UIImage(named: "logo1024.jpg"))
        view.addSubview(logo)
        logo.layer.cornerRadius = 20.0
        logo.anchorSetWidthToConstant(100.0)
        logo.anchorSetHeightToConstant(100.0)
        logo.anchorAlignVerticalCentersWith(redView, offset: -50.0)
        logo.anchorAlignHorizontalCentersWith(redView, offset: 80.0)
        
        let yellowView = UIView()
        yellowView.backgroundColor = UIColor.yellow.withAlphaComponent(0.5)
        view.addSubview(yellowView)
        yellowView.anchorSetWidthToWidthOf(view, multiplier: 0.5)
        yellowView.anchorSetHeightToHeightOf(view, multiplier: 0.333)
        yellowView.anchorAlignRightWithSafeAreaRightOf(view)
        yellowView.anchorAlignBottomsWith(view)

    }

}

