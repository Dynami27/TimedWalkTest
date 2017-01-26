//
//  healthkitManager.swift
//  timedwalktest
//
//  Created by Khalid Mohamed on 1/25/17.
//  Copyright © 2017 Khalid Mohamed. All rights reserved.
//

import Foundation
import HealthKit

class HealthKitManager: NSObject {

static let healthKitStore = HKHealthStore()
    static func authorizeHealthkit() {
        let healthKitTypes: Set = [
        HKObjectType.quantityType(forIdentifier: HKQuantityTypeIdentifier.heartRate)!,
            HKObjectType.quantityType(forIdentifier:HKQuantityTypeIdentifier.distanceWalkingRunning)!,
            ]
        healthKitStore.requestAuthorization(toShare: healthKitTypes,read: healthKitTypes) {_, _ in}
        
}
}
