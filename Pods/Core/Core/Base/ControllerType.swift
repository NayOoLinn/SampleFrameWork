//
//  ControllerType.swift
//  AppLaunch
//
//  Created by Nithi Kulasiriswatdi on 2021/07/11.
//

import Foundation

public protocol ControllerType {
    associatedtype ViewModelType
    func configViewModel(viewModel: ViewModelType)
    func setupViews()
    func bindViewModel()
}
