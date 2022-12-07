//
//  Subsystem2.swift
//  Facade
//
//  Created by Shumakov Dmytro on 07.12.2022.
//

import Foundation

/// Some facades can work with multiple subsystems at the same time.
class Subsystem2 {

    func operation1() -> String {
        return "Sybsystem2: Get ready!\n"
    }

    // ...

    func operationZ() -> String {
        return "Sybsystem2: Fire!\n"
    }
}
