//
//  AutolayoutFunctions.swift
//  Autolayout
//
//  Created by Vojtech Belovsky on 29/06/15.
//  Copyright (c) 2015 Vojtech Belovsky. All rights reserved.
//

import Foundation
import UIKit

var __views: Dictionary<String, UIView> = Dictionary()

func DB_CreateViewsAMNO( views : Dictionary<String, UIView> ) {
  
  if ( views.count == 0 ) {
    return
  }
  
  for (key, value) in views {
    value.setTranslatesAutoresizingMaskIntoConstraints( false )
  }
  
  __views = views;
  
}

func DB_ADD_VISUAL( __visual : String, view : UIView ) {
  
  view.addConstraints(NSLayoutConstraint.constraintsWithVisualFormat( __visual , options: NSLayoutFormatOptions(0), metrics: nil, views: __views ))
  
}

func DB_ADD_VISUALM( __visual : String, view : UIView, metrics : Dictionary<String, AnyObject> ) {
  
  view.addConstraints( NSLayoutConstraint.constraintsWithVisualFormat( __visual , options: NSLayoutFormatOptions(0), metrics: metrics, views: __views ))
  
}

func DB_CREATE_CONSTRAINT( item : UIView, relativeTo : UIView, attr : NSLayoutAttribute, relation : NSLayoutRelation ) -> NSLayoutConstraint {
  
  return NSLayoutConstraint( item: item, attribute: attr, relatedBy: relation, toItem: relativeTo, attribute: attr, multiplier: 1.0, constant: 0.0 )
  
}

func DB_ADD_CONSTRAINT( view : UIView, item : UIView, relativeTo : UIView, attr : NSLayoutAttribute, relation : NSLayoutRelation  ) {
 
  view.addConstraint( DB_CREATE_CONSTRAINT( item, relativeTo, attr, relation ))
  
}

func DB_ADD_CENTERX( view : UIView, item : UIView, relativeTo : UIView ) {
  
  view.addConstraint( DB_CREATE_CONSTRAINT( item, relativeTo, NSLayoutAttribute.CenterX, NSLayoutRelation.Equal ))
  
}

func DB_ADD_CENTERX_WITH_WIDTH( view : UIView, item : UIView, relativeTo : UIView, width : CGFloat ) {
  
  DB_ADD_CENTERX( view, item, relativeTo )
  view.addConstraint( NSLayoutConstraint(item: item, attribute: NSLayoutAttribute.Width, relatedBy: NSLayoutRelation.Equal, toItem: nil, attribute: NSLayoutAttribute.NotAnAttribute, multiplier: 1.0, constant: width ))
  
}

func DB_ADD_CENTERY( view : UIView, item : UIView, relativeTo : UIView ) {
  
  view.addConstraint( DB_CREATE_CONSTRAINT( item, relativeTo, NSLayoutAttribute.CenterY, NSLayoutRelation.Equal ))
  
}

func DB_ADD_CENTERY_WITH_HEIGHT( view : UIView, item : UIView, relativeTo : UIView, width : CGFloat ) {
  
  DB_ADD_CENTERY( view, item, relativeTo )
  view.addConstraint( NSLayoutConstraint(item: item, attribute: NSLayoutAttribute.Height, relatedBy: NSLayoutRelation.Equal, toItem: nil, attribute: NSLayoutAttribute.NotAnAttribute, multiplier: 1.0, constant: width ))
  
}























