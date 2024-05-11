//
//  HomeViewModel.swift
//  CleanUI
//
//  Created by SUU on 22/01/2024.
//  Copyright (c) 2024 All rights reserved.
//

import Foundation
import Combine
import Moya

final class HomeViewModel {
    
    private let service = MoyaProvider<HomeService>()
    private var cancelableStore = [AnyCancellable]()

    struct ViewModelInput {
        var goBack: AnyPublisher<Void, Never>
    }
    
    struct ViewModelOutput {
        
    }
    
    func transform(input: ViewModelInput) -> ViewModelOutput {
        input.goBack.sink {
            AppRouter.shared.exit()
        }.store(in: &cancelableStore)
        return ViewModelOutput()
    }
    
}

extension HomeViewModel {
    
}
