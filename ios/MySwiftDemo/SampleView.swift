//
//  SampleView.swift
//  MySwiftDemo
//
//  Created by JP Driver on 9/16/16.
//  Copyright © 2016 Facebook. All rights reserved.
//

import UIKit

class SampleView: UIView,YTPlayerViewDelegate {
  var youtubeView: YTPlayerView = YTPlayerView(frame: CGRect(x: 0, y: 50, width: 200, height: 200))
  var btn:UIButton = UIButton(frame: CGRect(x:0 ,  y: 0 , width: 200 , height: 50 ))
  
  override init(frame: CGRect) {
    super.init(frame: frame)

    self.frame = CGRect(x: 0, y: 0, width: 600, height: 600)
    self.backgroundColor = UIColor.blue
    self.youtubeView.load(withVideoId: "rek9rOV5kNw")
    
    let gesture = UITapGestureRecognizer(target: self, action: Selector(("playYoutube:")))
    self.addGestureRecognizer(gesture)
    self.addSubview(youtubeView)
    
    self.btn.backgroundColor = UIColor.red
    self.btn.setTitle("BTN ACTİON", for: .normal)
    self.btn.addTarget(self, action: Selector(("actionBtn:")), for: UIControlEvents.touchUpInside)
    self.addSubview(self.btn)
    
    
    
  }
  
  
  func actionBtn(sender: UIButton){
    print("btn");
  }
  
  func playerViewDidBecomeReady(_ playerView: YTPlayerView) {
    self.playYoutube()
    print("AAAAAA")
  }
  
  func playerView(_ playerView: YTPlayerView, didPlayTime playTime: Float) {
    print("BBBBBB")
  }
  
  
  
  
  
  func playYoutube(){
    self.playerView(self.youtubeView, didPlayTime: 0.0)
  }
  
  required init?(coder aDecoder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
  
}
