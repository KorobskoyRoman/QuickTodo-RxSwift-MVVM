//
//  PushedEditTaskViewController.swift
//  QuickTodo
//
//  Created by Roman Korobskoy on 07.07.2022.
//  Copyright © 2022 Ray Wenderlich. All rights reserved.
//

import Foundation
import UIKit

class PushedEditTaskViewController: UIViewController, BindableType {
  
  @IBOutlet var titleView: UITextView!
  @IBOutlet var titleLabel: UILabel!
  
  var viewModel: PushedEditTaskViewModel!
  
  func bindViewModel() {
    titleView.text = viewModel.itemTitle
    titleLabel.text = viewModel.itemTitle
    
    titleView.rx.text
      .orEmpty
      .bind(to: viewModel.onUpdate.inputs.asObserver())
      .disposed(by: self.rx.disposeBag)
  }
  
  override func viewDidAppear(_ animated: Bool) {
    super.viewDidAppear(animated)
    titleView.becomeFirstResponder()
  }
}
