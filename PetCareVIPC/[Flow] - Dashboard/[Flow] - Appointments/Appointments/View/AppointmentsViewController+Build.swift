//
//  AppointmentsViewController+Build.swift
//  PetCareVIPC
//
//  Created by Cagatay Cekeron 10.07.2023.
//

import UIKit

extension AppointmentsViewController {

	static func build(coordinator: AppointmentsInteractorCoordinatorDelegate) -> UIViewController {
		let presenter = AppointmentsPresenter()
		let interactor = AppointmentsInteractor(presenter: presenter)
		interactor.coordinator = coordinator
		let viewController = AppointmentsViewController(interactor: interactor)
		presenter.viewController = viewController
		return viewController
	}
}
