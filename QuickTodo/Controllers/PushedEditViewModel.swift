//
//  PushedEditViewModel.swift
//  QuickTodo
//
//  Created by Roman Korobskoy on 07.07.2022.
//  Copyright © 2022 Ray Wenderlich. All rights reserved.
//

import Foundation
import RxSwift
import Action

struct PushedEditTaskViewModel {
  let itemTitle: String
  let onUpdate: Action<String, Void>
  let disposeBag = DisposeBag()
  
  init(task: TaskItem, coordinator: SceneCoordinatorType, updateAction: Action<String, Void>) {
    itemTitle = task.title
    onUpdate = updateAction
  }
}
