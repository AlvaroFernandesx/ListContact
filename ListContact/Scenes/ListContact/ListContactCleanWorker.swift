//
//  ListContactCleanWorker.swift
//  ListContact
//
//  Created by Álvaro Fernandes on 23/03/22.
//  Copyright (c) 2022 ___ORGANIZATIONNAME___. All rights reserved.
//
//  This file was generated by the Clean Swift Xcode Templates so
//  you can apply clean architecture to your iOS and Mac projects,
//  see http://clean-swift.com
//

import UIKit
import PromiseKit

class ListContactCleanWorker  {
    let networkProvider: NetworkProvider

    init(networkProvider: NetworkProvider = NetworkProvider()) {
        self.networkProvider = networkProvider
    }

    func getData() -> Promise<[Contact]> {
        let requestProvider = ListContactProvider()
        return networkProvider.execute(request: requestProvider, parser: [Contact].self)
    }

}
