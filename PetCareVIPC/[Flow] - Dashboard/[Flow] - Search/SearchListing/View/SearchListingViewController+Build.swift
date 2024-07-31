//
//  SearchListingViewController+Build.swift
//  PetCareVIPC
//
//  Created by Cagatay Ceker on 22.07.2023.
//

import UIKit

extension SearchListingViewController {

    static func build(coordinator: SearchListingInteractorCoordinatorDelegate) -> UIViewController {
		let presenter = SearchListingPresenter()
        let interactor = SearchListingInteractor(presenter: presenter)
		interactor.coordinator = coordinator
		let viewController = SearchListingViewController(interactor: interactor)
		presenter.viewController = viewController
		return viewController
	}
}
