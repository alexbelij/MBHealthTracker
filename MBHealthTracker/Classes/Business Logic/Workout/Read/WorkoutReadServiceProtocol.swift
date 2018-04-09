//
//  WorkoutReadServiceProtocol.swift
//  MBHealthTracker
//
//  Created by Maty Brennan on 2/19/18.
//

import Foundation
import HealthKit

public enum WorkoutReadParsingError: LocalizedError {
    case unableToParse(String)
    
    public var errorDescription: String? {
        switch self {
        case let .unableToParse(value): return "Unable to parse: \(value)"
        }
    }
}

public enum WorkoutType {
    
    case today
    case thisWeek
    case all
}

public protocol WorkoutReadServiceProtocol {
    
    func getWorkouts(fromWorkoutType type: WorkoutType, completionHandler: @escaping (AsyncCallResult<WorkoutVM>) -> Void) throws
}
