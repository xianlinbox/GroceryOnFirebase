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
     fetchCloudValues()
  }
  
  private func loadValues() {
    let appDefaults = [
      "themeColor":"#FBB03B"
    ]
    RemoteConfig.remoteConfig().setDefaults(appDefaults as [String:NSObject])
  }
  
  fileprivate func fetchCloudValues() {
    let fetchDuration:TimeInterval = 0
    
    RemoteConfig.remoteConfig().fetch(withExpirationDuration: fetchDuration) { (status, error) in
      if let error = error {
        print("whoops! Something is wrong!")
        return
      }
      RemoteConfig.remoteConfig().activateFetched()
    }
  }
}
