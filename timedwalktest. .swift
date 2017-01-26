//
//  timedwalktest .swift
//  timedwalktest
//
//  Created by Khalid Mohamed on 12/9/16.
//  Copyright © 2016 Khalid Mohamed. All rights reserved.
//

import ResearchKit
import CoreMotion
public var timedWalk: ORKOrderedTask {
    return ORKOrderedTask.timedWalk(withIdentifier: "Timed Walk", intendedUseDescription: "Assessment measures balance", distanceInMeters: 3.048, timeLimit: 13, includeAssistiveDeviceForm: true, options: .excludeConclusion)

}
