//
//  LoginViewModel.swift
//  matchGame
//
//  Created by 水元太陽 on 2024/08/30.
//

import Foundation
import FirebaseAuth

class LoginViewModel: ObservableObject {
  @Published var email: String = ""
  @Published var password: String = ""
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
  //  ログインする関数
  func signIn(email: String, password: String) {
    Auth.auth().signIn(withEmail: email, password: password) { [weak self] result, error in
      DispatchQueue.main.async {
        if result != nil, error == nil {
          self?.isAuth = true
        }
      }
    }
  }
  //  新規登録する関数
  func signUp(email: String, password: String) {
    Auth.auth().createUser(withEmail: email, password: password) { [weak self] result, error in
      DispatchQueue.main.async {
        if result != nil, error == nil {
          self?.isAuth = true
        }
      }
    }
  }
  //  パスワードをリセットする関数
  func resetPassword(email: String) {
    Auth.auth().sendPasswordReset(withEmail: email) { error in
      if error != nil {
        print("error")
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
