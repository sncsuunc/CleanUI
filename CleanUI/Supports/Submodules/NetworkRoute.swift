//
//  NetworkRoute.swift
//  CleanUI
//
//  Created by SUU on 23/01/2024.
//  Copyright (c) 2024 All rights reserved.
//

import SSKit

enum NetworkRoute: SSRoute {
    
    case screen(_ viewModel: NetworkViewModel)
    
    var screen: SSViewController {
        switch self {
        case let .screen(viewModel):
            return NetworkViewController.create(viewModel)
        }
    }
    
}