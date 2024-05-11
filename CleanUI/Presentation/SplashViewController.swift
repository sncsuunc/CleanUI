//
//  SplashViewController.swift
//  CleanUI
//
//  Created by SUU on 21/01/2024.
//  Copyright (c) 2024 All rights reserved.
//

import Combine
import SSKit

class SplashViewController: SSViewController {
    
    private var viewModel: SplashViewModel!
    private var cancelableStore = [AnyCancellable]()
    
    @IBOutlet weak var progressView: UIProgressView!
    
    class func create(_ viewModel: SplashViewModel) -> SplashViewController {
        let vc = SplashViewController()
        vc.viewModel = viewModel
        return vc
    }

    override func initializeNotification() {
        
    }

    override func initializeViews() {
        
    }

    override func initializeData() {
        let input = SplashViewModel.ViewModelInput()
        let output = viewModel.transform(input: input)
        output.progess.sink { progess in
            self.progressView.isHidden = false
            self.progressView.progress = progess
        }.store(in: &cancelableStore)
        viewModel.loadData()
    }
    
}

extension SplashViewController {
    
}
