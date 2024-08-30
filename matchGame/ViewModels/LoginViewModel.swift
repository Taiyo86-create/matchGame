//
//  LoginViewModel.swift
//  matchGame
//
//  Created by 水元太陽 on 2024/08/30.
//

import Foundation
import FirebaseAuth

class LoginViewModel: ObservableObject {
  @Published var isAuth:Bool = false
  
  init() {
//    インスタンスが生成されたら認証情報を確認
    observeAuthChanges()
  }
  
  //  認証状態を確認する
  private func observeAuthChanges() {
    Auth.auth().addStateDidChangeListener { [weak self] _, user in
      DispatchQueue.main.async {
        self?.isAuth = user != nil
      }
    }
  }
}
