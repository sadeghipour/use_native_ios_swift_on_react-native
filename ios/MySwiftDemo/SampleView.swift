//
//  SampleView.swift
//  MySwiftDemo
//
//  Created by JP Driver on 9/16/16.
//  Copyright © 2016 Facebook. All rights reserved.
//

import UIKit

@objc(SampleView)
class SampleView: UIView,YTPlayerViewDelegate {
  var youtubeView: YTPlayerView = YTPlayerView()
  let screenSize = UIScreen.main.bounds
  var screenWidth:(Any)? = nil
  var screenHeight:(Any)? = nil
  override init(frame: CGRect) {
    super.init(frame: frame)
    self.screenWidth = screenSize.width
    self.screenHeight = screenSize.height
  }
  
  @objc func showVideoYoutube(_ videoCode: Any, _ width:Any , _ height:Any)->Void{
    
    DispatchQueue.global(qos: .userInitiated).async {
      DispatchQueue.main.async {
        self.youtubeView.load(withVideoId: videoCode as! String)
        
        let w = ((self.screenWidth as! CGFloat) * (width as! CGFloat)) / 100
        let h = ((self.screenHeight as! CGFloat) * (height as! CGFloat)) / 100
        self.youtubeView.frame = CGRect(x: 0, y: 0, width: width as! CGFloat , height: height as! CGFloat)
        self.addSubview(self.youtubeView)
      }
    }
    
    
  }
  

  required init?(coder aDecoder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
  
}
