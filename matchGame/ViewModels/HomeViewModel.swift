//
//  HomeViewModel.swift
//  matchGame
//
//  Created by 水元太陽 on 2024/08/31.
//

import Foundation
import FirebaseAuth

class HomeViewModel: ObservableObject {
  @Published var isAuth:Bool = false
  
  init() {
    //    インスタンスが生成されたら認証情報を確認
    observeAuthChanges()
  }
  
  private func observeAuthChanges() {
    Auth.auth().addStateDidChangeListener { [weak self] _, user in
      DispatchQueue.main.async {
        self?.isAuth = user != nil
      }
    }
  }
  //  ログアウトのメソッド
  func signOut() {
    do {
      try Auth.auth().signOut()
      isAuth = false
    } catch _ as NSError {
      print("エラー")
    }
  }
}
