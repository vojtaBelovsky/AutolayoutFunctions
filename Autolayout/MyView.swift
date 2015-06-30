//
//  MyView.swift
//  Autolayout
//
//  Created by Vojtech Belovsky on 29/06/15.
//  Copyright (c) 2015 Vojtech Belovsky. All rights reserved.
//

import UIKit

let margin = 40

class MyView: UIView {

  let redView: UIView = UIView()
  
  init() {
    super.init(frame: CGRectZero)
    self.backgroundColor = UIColor.whiteColor()
    
    redView.backgroundColor = UIColor.redColor()
    self.addSubview(redView)
    
    let metrics = [ "margin" : margin ]
    
    DB_CreateViewsAMNO( [ "redView" : redView ] )
    DB_ADD_CENTERX_WITH_WIDTH( self, redView, redView.superview!, 200 );
    DB_ADD_CENTERY_WITH_HEIGHT( self, redView, redView.superview!, 200 );
    
  }

  required init(coder aDecoder: NSCoder) {
      fatalError("init(coder:) has not been implemented")
  }
  
}
