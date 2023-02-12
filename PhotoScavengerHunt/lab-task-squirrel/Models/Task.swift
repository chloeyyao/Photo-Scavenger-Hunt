//
//  Task.swift
//  lab-task-squirrel
//
//  Created by Charlie Hieger on 11/15/22.
//

import UIKit
import CoreLocation

class Task {
    let title: String
    let description: String
    var image: UIImage?
    var imageLocation: CLLocation?
    var isComplete: Bool {
        image != nil
    }

    init(title: String, description: String) {
        self.title = title
        self.description = description
    }

    func set(_ image: UIImage, with location: CLLocation) {
        self.image = image
        self.imageLocation = location
    }
}

extension Task {
    static var mockedTasks: [Task] {
        return [
            Task(title: "Your favorite cafe",
                 description: "Where do you go to relax and get a cup of coffee?"),
            Task(title: "Your favorite hidden spot",
                 description: "Where is your secret getaway"),
            Task(title: "Your favorite vacation spot",
                 description: "Where do you like to visit on break?")
        ]
    }
}
