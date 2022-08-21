//
//  ECKeyData.swift
//  AppStoreConnect-Swift-SDK
//
//  Created by Antoine van der Lee on 08/11/2018.
//

import Foundation
import Crypto

public typealias ECKeyData = Data

extension ECKeyData {
    public func toPrivateKey() throws -> ECPrivateKey {
        var error: Unmanaged<CFError>?
        return try P256.Signing.PrivateKey(x963Representation: self)
    }
}
