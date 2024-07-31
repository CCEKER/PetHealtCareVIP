//
//  SplashPresenter.swift
//  PetCareVIPC
//
//  Created by Cagatay Ceker on 4.07.2023.
//

import UIKit

protocol SplashPresenterProtocol: AnyObject {
	func setupInitialState()
}

final class SplashPresenter: SplashPresenterProtocol {

	weak var viewController: SplashViewControllerProtocol?

	func setupInitialState() {
		viewController?.display(viewState: .initial)
	}
}
