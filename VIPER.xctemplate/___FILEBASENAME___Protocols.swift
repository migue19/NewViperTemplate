//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  ___COPYRIGHT___
//

import Foundation
import UIKit

protocol ___VARIABLE_ModuleName___ViewProtocol: AnyObject {
    // PRESENTER -> VIEW
    var presenter: ___VARIABLE_ModuleName___PresenterProtocol? { get set }
}

protocol ___VARIABLE_ModuleName___RouterProtocol: AnyObject {
    // PRESENTER -> WIREFRAME
    var view: ___VARIABLE_ModuleName___View? { get set }
    static func create___VARIABLE_ModuleName___Module() -> UIViewController
}

protocol ___VARIABLE_ModuleName___PresenterProtocol: AnyObject {
    // VIEW -> PRESENTER
    var view: ___VARIABLE_ModuleName___ViewProtocol? { get set }
    var interactor: ___VARIABLE_ModuleName___InteractorInputProtocol? { get set }
    var router: ___VARIABLE_ModuleName___RouterProtocol? { get set }
    
    func viewDidLoad()
}

protocol ___VARIABLE_ModuleName___InteractorOutputProtocol: AnyObject {
    // INTERACTOR -> PRESENTER
}

protocol ___VARIABLE_ModuleName___InteractorInputProtocol: AnyObject {
    // PRESENTER -> INTERACTOR
    var presenter: ___VARIABLE_ModuleName___InteractorOutputProtocol? { get set }
    var remoteDatamanager: ___VARIABLE_ModuleName___RemoteDataManagerInputProtocol? { get set }
}

protocol ___VARIABLE_ModuleName___DataManagerInputProtocol: AnyObject {
    // INTERACTOR -> DATAMANAGER
}

protocol ___VARIABLE_ModuleName___RemoteDataManagerInputProtocol: AnyObject {
    // INTERACTOR -> REMOTEDATAMANAGER
    var remoteRequestHandler: ___VARIABLE_ModuleName___RemoteDataManagerOutputProtocol? { get set }
}

protocol ___VARIABLE_ModuleName___RemoteDataManagerOutputProtocol: AnyObject {
    // REMOTEDATAMANAGER -> INTERACTOR
}

