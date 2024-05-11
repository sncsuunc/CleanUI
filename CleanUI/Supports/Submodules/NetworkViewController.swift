//
//  NetworkViewController.swift
//  CleanUI
//
//  Created by SUU on 23/01/2024.
//  Copyright (c) 2024 All rights reserved.
//

import Combine
import SSKit

class NetworkViewController: SSViewController {
    
    private var viewModel: NetworkViewModel!
    private var cancelableStore = [AnyCancellable]()
    
    class func create(_ viewModel: NetworkViewModel) -> NetworkViewController {
        let vc = NetworkViewController()
        vc.viewModel = viewModel
        return vc
    }

    override func initializeNotification() {
        
    }

    override func initializeViews() {
        
    }

    override func initializeData() {
        
    }
    
}

extension NetworkViewController {
    
}
