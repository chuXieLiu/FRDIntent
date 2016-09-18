//
//  Intent.swift
//  FRDIntent
//
//  Created by GUO Lin on 8/25/16.
//  Copyright © 2016 Douban Inc. All rights reserved.
//

import Foundation

/**
 An intent is an abstract description of an operation to be performed. It can be used with startController to launch a view controller.
 */
open class Intent: NSObject {

  /**
   The url for identify the destination view controller.
   */
  open var url: URL?

  /**
   The destination view controller's class type.
  */
  open var receiveClass: AnyClass?

  /**
   The way of how to display the new view controller.
  */
  open var controllerDisplay: ControllerDisplay = PushDisplay()

  /**
   The extra data to inform the destination view controller. Read-only.
   */
  open fileprivate(set) var extras = [String: AnyObject]()

  /**
   Initializer with the destination view controller's class type.
   
   - parameter clazz: The destination view controller's class type.
   */
  public init(clazz: AnyClass) {
    self.receiveClass = clazz 
  }

  /**
   Initializer with the url for identify the destination view controller.
   
   - parameter url: The url for identify the destination view controller.
  */
  public init(url: URL) {
    self.url = url
  }

  /**
   Put the extra data into the intent.
  */
  open func putExtra(name: String, data: AnyObject) {
    self.extras[name] = data
  }

}
