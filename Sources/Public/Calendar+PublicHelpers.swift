//  Created by Михаил on 09/07/2020.
//  Copyright © 2020 Airbnb. All rights reserved.

// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
// http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

import Foundation

public extension Calendar {

    func month(containing date: Date) -> Month {
      return Month(
        era: component(.era, from: date),
        year: component(.year, from: date),
        month: component(.month, from: date),
        isInGregorianCalendar: identifier == .gregorian)
    }

    func day(containing date: Date) -> Day {
      let month = Month(
        era: component(.era, from: date),
        year: component(.year, from: date),
        month: component(.month, from: date),
        isInGregorianCalendar: identifier == .gregorian)
      return Day(month: month, day: component(.day, from: date))
    }
}
