//
//  Client.swift
//  Facade
//
//  Created by Shumakov Dmytro on 07.12.2022.
//

import Foundation

/// The client code works with complex subsystems through a simple interface
/// provided by the Facade. When a facade manages the lifecycle of the
/// subsystem, the client might not even know about the existence of the
/// subsystem. This approach lets you keep the complexity under control.
class Client {
    // ...
    static func clientCode(facade: Facade) {
        print(facade.operation())
    }
    // ...
}
