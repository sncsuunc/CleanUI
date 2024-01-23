//
//  HomeRoute.swift
//  CleanUI
//
//  Created by SUU on 22/01/2024.
//  Copyright (c) 2024 All rights reserved.
//

import SSKit

enum HomeRoute: SSRoute {
    
    case screen(_ viewModel: HomeViewModel)
    
    var screen: SSViewController {
        switch self {
        case let .screen(viewModel):
            return HomeViewController.create(viewModel)
        }
    }
    
}