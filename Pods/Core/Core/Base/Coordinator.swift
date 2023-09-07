
//
//  Coordinator.swift
//  Core
//

import UIKit

public protocol RegisDelegate {
    static var identifier: String { get }
    static func regis(identifier: String)
    static func getIdentifier() -> String
}

open class SCoordinator {
    public var navigationController: UINavigationController
    open var delegate: RegisDelegate?
    public required init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    open func start() {
        fatalError("Implement start in each subclass of Coordinator")
    }

    open func pushTo(viewController: UIViewController) {
        self.navigationController.pushViewController(viewController, animated: true)
    }

    open func changeLastViewController(to toViewController: UIViewController) {
        var vcs = navigationController.viewControllers
        if vcs.count > 0 {
            vcs.removeLast()
        }
        vcs.append(toViewController)
        self.navigationController.setViewControllers(vcs, animated: true)
    }

    open func cleanViewControllers(to toViewController: UIViewController) {
        let vcs = navigationController.viewControllers
        guard let rootVC = vcs.first else {
            changeLastViewController(to: toViewController)
            return
        }
        self.navigationController.setViewControllers([rootVC, toViewController], animated: true)
    }


    open func cleanStackWhenPush(to toViewController: UIViewController) {
        self.navigationController.setViewControllers([toViewController], animated: true)
    }

    open func isVisible(controllerName: String) -> Bool {
        if let paybillVC = NSClassFromString(controllerName),
           let isCurrent = navigationController.visibleViewController?.isKind(of: paybillVC),
           isCurrent {
            return true
        }
        return false
    }

    open func popTo(viewController type: UIViewController.Type) {
        var toViewController: UIViewController?
        for viewController in navigationController.viewControllers {
            if viewController.isKind(of: type) {
                toViewController = viewController
                break
            }
        }

        guard let viewController = toViewController else {
            navigationController.popViewController(animated: true)
            return
        }
        navigationController.popToViewController(viewController, animated: true)
    }
}
