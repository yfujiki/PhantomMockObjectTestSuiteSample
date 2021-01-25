//
//  ViewController.swift
//  TestSuiteSample
//
//  Created by Yuichi Fujiki on 1/20/21.
//

import UIKit

class ViewController: UIViewController {
    private var viewModel: ViewModel?

    override func viewDidLoad() {
        super.viewDidLoad()

        viewModel = ViewModel()
    }
}

