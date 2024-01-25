//
//  MainViewModel.swift
//  CleanUI
//
//  Created by SUU on 21/01/2024.
//  Copyright (c) 2024 All rights reserved.
//

import Foundation
import Combine
import Moya

final class MainViewModel {
    
    private let service = MoyaProvider<MainService>()
    private let soundUseCase = AppContainer.shared[SoundUseCase.self]
    private var cancelableStore = [AnyCancellable]()
    
    private var sounds = PassthroughSubject<[String], Never>()

    struct ViewModelInput {
        var goToHome: AnyPublisher<Void, Never>
    }
    
    struct ViewModelOutput {
        var sounds: AnyPublisher<[String], Never>
    }
    
    func transform(input: ViewModelInput) -> ViewModelOutput {
        input.goToHome.sink {
            AppRouter.shared.navigate(to: HomeRoute.screen(HomeViewModel()), with: .push)
        }.store(in: &cancelableStore)
        return ViewModelOutput(sounds: sounds.eraseToAnyPublisher())
    }
    
    func saveSound(_ soundModel: SoundModel) {
        
    }
    
}

extension MainViewModel {
    
}
