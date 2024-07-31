//
//  TutorialsFlowCoordinator.swift
//  PetCareVIPC
//
//  Created by Cagatay Ceker on 4.07.2023.
//

import UIKit

protocol TutorialsFlowCoordinatorDelegate: AnyObject {
    func tutorialsFlowCoordinatorDidDelegateFinish()
}

final class TutorialsFlowCoordinator: FlowCoordination {
    
    weak var delegate: TutorialsFlowCoordinatorDelegate?
    private let window: UIWindow
    init(window: UIWindow) {
        self.window = window
    }
    
    func start() {
        let tutorialsViewController = TutorialsViewController.build(coordinator: self)
        window.rootViewController = tutorialsViewController
    }
}

extension TutorialsFlowCoordinator: TutorialsInteractorCoordinatorDelegate {
    
    func didTutorialsFinish() {
        delegate?.tutorialsFlowCoordinatorDidDelegateFinish()
    }
}
