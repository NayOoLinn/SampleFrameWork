//
//  BaseViewModel.swift
//  Core
//
//  Created by Chung Cr on 07/08/2023.
//

import Foundation

// MARK: - AnyViewModel
public protocol AnyViewModel {}

// MARK: - StatelessViewModel
/// Stateless view model is used for it's view only, not to receive inputs or deliver outputs for others
public protocol StatelessViewModel: AnyViewModel {
    associatedtype StatelessInput
    associatedtype StatelessOutput
    
    /// Transform inputs to outputs
    /// Don't keep any states
    /// - Parameter input: Input
    /// - Returns: Output
    func transform(input: StatelessInput) -> StatelessOutput
}

// MARK: - StatefulViewModel
/// Stateful view model is used for the case that a view model need to receive inputs from others (like other view model) or deliver ouputs for others than it's view
public protocol StatefulViewModel: AnyViewModel {
    associatedtype StatefulInput
    associatedtype StatefulOutput
    associatedtype InternalState
    
    var input: StatefulInput { get }
    var output: StatefulOutput { get }
    var internalState: InternalState { get }
    
    /// Binding logics for keeping states
    func bindLogics()
}

// MARK: - StatefulViewModel default inplementation
public extension StatefulViewModel {
    
    func binLogics() {}
}
