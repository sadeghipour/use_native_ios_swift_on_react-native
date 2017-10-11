//
//  SampleViewManager.swift
//  MySwiftDemo
//
//  Created by JP Driver on 9/16/16.
//  Copyright © 2016 Facebook. All rights reserved.
//

import UIKit
@objc(SampleViewManager)
class SampleViewManager : RCTViewManager,YTPlayerViewDelegate {
  @objc let samleView : SampleView = SampleView()
  
  override func view() -> UIView! {
    return samleView;
  }

  @objc func showVideo(_ videoCode:Any, _ width:Any , _ height:Any){
    self.samleView.showVideoYoutube(videoCode, width , height)
  }
}
