//
//  AppTabbarProtocol.swift
//  Core
//

import Foundation

public protocol AppTabbarProtocol: AnyObject {
    func showTabBar()
    func hideTabBar()
    func isTabBarShowing() -> Bool
}
