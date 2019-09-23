# MBHealthTracker

[![CI Status](http://img.shields.io/travis/matybrennan/MBHealthTracker.svg?style=flat)](https://travis-ci.org/matybrennan/MBHealthTracker)
[![Version](https://img.shields.io/cocoapods/v/MBHealthTracker.svg?style=flat)](http://cocoapods.org/pods/MBHealthTracker)
[![License](https://img.shields.io/cocoapods/l/MBHealthTracker.svg?style=flat)](http://cocoapods.org/pods/MBHealthTracker)
[![Platform](https://img.shields.io/cocoapods/p/MBHealthTracker.svg?style=flat)](http://cocoapods.org/pods/MBHealthTracker)

## Goals

- Make using HealthKit to a project easy.
- Enable easy integration for health data.
- Provide an Open Source project for the iOS open source community.
- Help others learn about HealthKit.

## Installation

MBHealthTracker is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod 'MBHealthTracker'
```

## Getting Started

### Configuration for HealthKit
Add health kit in capabilities through project in "Capabilities"

Add below code to your info.plist
```
<key>NSHealthShareUsageDescription</key>
<string>Health want to read your health data</string>
<key>NSHealthUpdateUsageDescription</key>
<string>Health wants to write your progress to health store</string>
```

### Guide

The main driver that contains all the business logic is ```MBHealthTracker``` which can be injected into your services with  ```MBHealthTrackerProtocol```

The ```MBHealthTracker``` contains all the services below
``` 
let tracker = MBHealthTracker()
let configuration = tracker.configuration
```

#### Configuration 
- requestingAuthorization
- presenting healthKit app
```var configuration: ConfigurationServiceProtocol```

#### Sleep
- getting sleep
- saving sleep item

#### EnergyUse
Split into sections to gather data based on timeIntervals
- today, thisWeek, betweenTime

#### Characteristics
- biologicalSex
- bloodType
- dateOfBirth
- skinType
- isWheelChairUser

#### HeartRate
Split into sections to gather data based on timeIntervals
- today, thisWeek, all
    
#### Steps
Split into sections to gather data based on timeIntervals
- last hour, today, thisWeek, betweenTime

#### Body
- bodyMassIndex
- bodyFatPercentage
- leanBodyMass
- height
- waistCircumference

#### Nutrition
- macronutrients
- minerals
- ultratrace minerals
- vitamins
- hydration
- caffeine

#### Workouts
- saveWorkoutItem
- getWorkouts
    - today, thisWeek, all

## Contact

Have a question or an issue about MBHealthTracker? Create an [issue](https://github.com/matybrennan/MBHealthTracker/issues/new)!

Interested in contributing to MBHealthTracker? Branch off and create a PR 

### Apps using this library

Add your app to the list of apps using this library and make a pull request.

- [Formacar](https://itunes.apple.com/us/developer/mathew-brennan/id1044170265)

## License

MBHealthTracker is available under the MIT license.
