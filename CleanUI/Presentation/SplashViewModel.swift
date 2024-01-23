//
//  SplashViewModel.swift
//  CleanUI
//
//  Created by SUU on 21/01/2024.
//  Copyright (c) 2024 All rights reserved.
//

import Foundation
import Combine

private let MAX_TIMER = 5

final class SplashViewModel {
    
    private var cancelableStore = [AnyCancellable]()
    
    private var timer: Timer?
    private var progessValue: Int = 0
    private var progessSubject = PassthroughSubject<Float, Never>()

    struct ViewModelInput {
        
    }
    
    struct ViewModelOutput {
        var progess: AnyPublisher<Float, Never>
    }
    
    func transform(input: ViewModelInput) -> ViewModelOutput {
        return ViewModelOutput(
            progess: progessSubject.eraseToAnyPublisher()
        )
    }
    
    func loadData() {
        Task {
            try? await Task.sleep(nanoseconds: 3 * 1_000_000_000)
            await MainActor.run {
                loadTimer()
            }
        }
    }
    
}

extension SplashViewModel {
    
    private func loadTimer() {
        progessSubject.send(0)
        timer = Timer.scheduledTimer(withTimeInterval: 1.0, repeats: true) { [self] timer in
            progessValue += 1
            progessSubject.send(Float(progessValue)/Float(MAX_TIMER))
            if progessValue >= MAX_TIMER {
                timer.invalidate()
                AppRouter.shared.navigate(to: MainRoute.screen(MainViewModel()), with: .root)
            }
        }
    }
    
}
