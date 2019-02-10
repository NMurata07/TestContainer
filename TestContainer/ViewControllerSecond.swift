//
//  ViewControllerSecond.swift
//  TestContainer
//
//  Created by Nobuharu Murata on 2019/02/11.
//  Copyright © 2019 Nobuharu Murata. All rights reserved.
//

import UIKit

class ViewControllerSecond: UIViewController {

    
    @IBOutlet weak var contentsViewFrame: UIView!
    @IBOutlet weak var scrollViewWidth: NSLayoutConstraint!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        super.viewDidLoad()
        
        // 各ページに設定するカラーの配列
        let colorList = [UIColor.black,
                         UIColor.darkGray,
                         UIColor.gray,
                         UIColor.lightGray]
        
        // 全てのViewを追加した後のWidthを設定
        scrollViewWidth.constant = UIScreen.main.bounds.width * CGFloat(colorList.count)
        
        // x座標を１画面分ずつずらしながらViewを生成しadd
        var index: CGFloat = 0
        for color in colorList {
            let frame = CGRect(x: UIScreen.main.bounds.width * index,
                               y: 0,
                               width: UIScreen.main.bounds.width,
                               height: UIScreen.main.bounds.height)
            let addView = UIView(frame: frame)
            addView.backgroundColor = color
            contentsViewFrame.addSubview(addView)
            index += 1
        }
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
