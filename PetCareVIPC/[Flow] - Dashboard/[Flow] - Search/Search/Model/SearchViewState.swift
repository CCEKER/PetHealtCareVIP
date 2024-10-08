//
//  SearchViewState.swift
//  PetCareVIPC
//
//  Created by Cagatay Ceker on 10.07.2023.
//

import UIKit

enum SearchViewState {
    case initial(attributedHeadlineString: NSMutableAttributedString, viewModel: [SearchCollectionViewModel])
}

struct SearchCollectionViewModel: Decodable {
    let id: String
    let image: String
    let headline: String
}

