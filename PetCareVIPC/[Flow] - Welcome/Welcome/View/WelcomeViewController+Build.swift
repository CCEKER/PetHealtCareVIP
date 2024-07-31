//
//  WelcomeViewController+Build.swift
//  PetCareVIPC
//
//  Created by Cagatay Ceker on 4.07.2023.
//

import UIKit

extension WelcomeViewController {

	static func build(coordinator: WelcomeInteractorCoordinatorDelegate) -> UIViewController {
		let presenter = WelcomePresenter()
		let interactor = WelcomeInteractor(presenter: presenter)
		interactor.coordinator = coordinator
		let viewController = WelcomeViewController(interactor: interactor)
		presenter.viewController = viewController
		return viewController
	}
}
