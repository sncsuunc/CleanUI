//
//  MainViewController.swift
//  CleanUI
//
//  Created by SUU on 21/01/2024.
//  Copyright (c) 2024 All rights reserved.
//

import Combine
import CombineCocoa
import SSKit

class MainViewController: SSViewController {
    
    @IBOutlet weak var buttonGoHome: UIButton!
    
    private var viewModel: MainViewModel!
    
    class func create(_ viewModel: MainViewModel) -> MainViewController {
        let vc = MainViewController()
        vc.viewModel = viewModel
        return vc
    }

    override func initializeNotification() {
        
    }

    override func initializeViews() {
        
    }

    override func initializeData() {
        let input = MainViewModel.ViewModelInput(goToHome: buttonGoHome.tapPublisher)
        let _ = viewModel.transform(input: input)
    }

    override func reloadSetting() {
        
    }

    override func releaseSetting() {
        
    }
    
}

extension MainViewController {
    
}
