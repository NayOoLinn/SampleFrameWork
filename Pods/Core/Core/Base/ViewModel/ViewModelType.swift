//
//  ViewModelType.swift
//  AppLaunch
//
//  Created by Russell Yi on 2020/10/27.
//

import Foundation

public protocol ViewModelType {
    associatedtype Input
    associatedtype Output
    
    var input: Input { get }
    var output: Output { get }
}
