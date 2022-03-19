//
//  MyLogger1.swift
//  MyLogger1
//
//  Created by Al Stark on 19.03.2022.
//

import Foundation

public struct MyLogger1 {
public static func log(_ s: String) {
          print("MyLogger1 from framework (\(Date())): \(s)")
      }
}
