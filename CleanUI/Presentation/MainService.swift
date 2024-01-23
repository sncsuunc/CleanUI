//
//  MainService.swift
//  CleanUI
//
//  Created by SUU on 21/01/2024.
//  Copyright (c) 2024 All rights reserved.
//

import Foundation
import Combine
import Moya

enum MainService {
    
}

extension MainService: TargetType {
    
    var baseURL: URL {
        return URL(string: "")!
    }
    
    var path: String {
        return ""
    }
    
    var method: Moya.Method {
        return .get
    }
    
    var task: Moya.Task {
        return .requestPlain
    }
    
    var headers: [String : String]? {
        return [:]
    }
    
}