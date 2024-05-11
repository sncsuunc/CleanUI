//
//  HomeViewController.swift
//  CleanUI
//
//  Created by SUU on 22/01/2024.
//  Copyright (c) 2024 All rights reserved.
//

import Combine
import CombineCocoa
import SSKit

class HomeViewController: SSViewController {
    
    @IBOutlet weak var buttonBack: UIButton!
    
    private var viewModel: HomeViewModel!
    private var cancelableStore = [AnyCancellable]()
    
    class func create(_ viewModel: HomeViewModel) -> HomeViewController {
        let vc = HomeViewController()
        vc.viewModel = viewModel
        return vc
    }

    override func initializeNotification() {
        
    }

    override func initializeViews() {
        
    }

    override func initializeData() {
        let input = HomeViewModel.ViewModelInput(goBack: buttonBack.tapPublisher)
        let _ = viewModel.transform(input: input)
    }
    
}

extension HomeViewController {
    
}
