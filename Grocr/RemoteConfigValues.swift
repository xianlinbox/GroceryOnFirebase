//
//  RCValues.swift
//  Grocr
//
//  Created by Xianning Liu  on 2018/5/22.
//  Copyright © 2018 Razeware LLC. All rights reserved.
//

import Firebase
class RemoteConfigValues {
  static let sharedInstance = RemoteConfigValues()
  
  init() {
    loadValues()
  }
  
  private func loadValues() {
    let appDefaults = [
      "themeColor":"#FBB03B"
    ]
    RemoteConfig.remoteConfig().setDefaults(appDefaults as [String:NSObject])
    
  }
}
