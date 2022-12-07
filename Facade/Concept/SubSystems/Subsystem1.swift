//
//  Subsystem1.swift
//  Facade
//
//  Created by Shumakov Dmytro on 07.12.2022.
//

import Foundation

/// The Subsystem can accept requests either from the facade or client directly.
/// In any case, to the Subsystem, the Facade is yet another client, and it's
/// not a part of the Subsystem.
class Subsystem1 {

    func operation1() -> String {
        return "Sybsystem1: Ready!\n"
    }

    // ...

    func operationN() -> String {
        return "Sybsystem1: Go!\n"
    }
}
