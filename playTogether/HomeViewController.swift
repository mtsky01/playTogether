//
//  HomeViewController.swift
//  playTogether
//
//  Created by 马腾 on 16/4/18.
//  Copyright © 2016年 马腾. All rights reserved.
//

import UIKit

<<<<<<< Updated upstream
enum TableViewMode{
    /// 半糖精选
    case BanTangGoodSelectMode
    /// 用户推荐
    case UserRecommendMode
}

class HomeViewController: UIViewController ,SegmentViewDelegate {

    private var tableViewMode = TableViewMode.BanTangGoodSelectMode
    
    private var segmentView = SegmentView()
=======
class HomeViewController: UIViewController {
    /// 顶部自定义导航条
    var customBar = UIView()
    ///顶部轮播视图
    var bannerView = BannerView()
    /// 标签
    var titleView = TitleView()
    /// 轮播视图 ，标签视图 的容器
    var headView = UIView()
    ///tableview 容器
    var showScrollView:UIScrollView!
    /// tableview容器
    var showCollectionView:UICollectionView!
    
    
    
    
    
    
    
    
>>>>>>> Stashed changes
    override func viewDidLoad() {
        super.viewDidLoad()
        buildSegmentView()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    
    func buildSegmentView(){
        segmentView = SegmentView.init(frame: CGRectMake(0, 300, SCREEN_WIDTH, 45), firstTitle: "最热活动", secondTitle: "最新活动")
        segmentView.delegate = self
        view.addSubview(segmentView)
    }
    
    func clickSegmentView(clickIndex: Int) {
        if(tableViewMode == .BanTangGoodSelectMode)
        {
            tableViewMode = .UserRecommendMode
        }else
        {
            tableViewMode = .BanTangGoodSelectMode
        }
        //banTangView.reloadData()
    }

}
