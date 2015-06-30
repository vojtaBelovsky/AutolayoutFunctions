//
//  ViewController.swift
//  Autolayout
//
//  Created by Vojtech Belovsky on 29/06/15.
//  Copyright (c) 2015 Vojtech Belovsky. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

  override func loadView() {
    self.view = MyView()
  }
  
  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }


}

