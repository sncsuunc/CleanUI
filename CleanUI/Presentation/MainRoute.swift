//
//  MainRoute.swift
//  CleanUI
//
//  Created by SUU on 21/01/2024.
//  Copyright (c) 2024 All rights reserved.
//

import SSKit

enum MainRoute: SSRoute {
    
    case screen(_ viewModel: MainViewModel)
    
    var screen: SSViewController {
        switch self {
        case let .screen(viewModel):
            return MainViewController.create(viewModel)
        }
    }
    
}
