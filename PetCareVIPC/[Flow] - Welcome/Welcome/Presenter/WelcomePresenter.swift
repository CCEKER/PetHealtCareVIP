//
//  WelcomePresenter.swift
//  PetCareVIPC
//
//  Created by Cagatay Ceker on 4.07.2023.
//

import UIKit

protocol WelcomePresenterProtocol: AnyObject {
	func setupInitialState()
}

final class WelcomePresenter: WelcomePresenterProtocol {

	weak var viewController: WelcomeViewControllerProtocol?

	func setupInitialState() {
		viewController?.display(viewState: .initial)
	}
}
