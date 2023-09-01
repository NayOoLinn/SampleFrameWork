//
//  OrientationProtocol.swift
//  Core
//

import Foundation

public protocol OrientationProtocol: AnyObject {
    var screenOrientationMask: UIInterfaceOrientationMask { get }
}
