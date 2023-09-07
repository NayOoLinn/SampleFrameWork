//
//  BaseView.swift
//  Core
//
//  Created by Chung Cr on 08/08/2023.
//

import Foundation

// MARK: - Protocol for a View object in MVVM
public protocol View: AnyObject {
    associatedtype ViewModel: AnyViewModel
    
    var viewModel: ViewModel! { get set }
    
    /// Setting up UI
    func setupUI()
    
    /// Binding viewmodel
    /// - Parameter viewModel: Viewmodel
    func bind(viewModel: ViewModel)
    
    /// Binding inputs
    ///
    ///  Used for stateful view model
    func bindInputs()
    
    /// Binding outputs
    ///
    /// Used for stateful  view model
    func bindOutputs()
    
    /// Binding stateless outputs
    ///
    /// Since stateless view model doesn't hold an input, so only need to get the output from it's transformation and bind to the view
    func bindStatelessOutputs()
}

// MARK: - Default implementation for View's binding
public extension View {
    
    func bind(viewModel: ViewModel) {
        self.viewModel = viewModel
        
        self.bindInputs()
        self.bindOutputs()
        self.bindStatelessOutputs()
    }
    
    func bindInputs() {}
    
    func bindOutputs() {}
    
    func bindStatelessOutputs() {}
}
