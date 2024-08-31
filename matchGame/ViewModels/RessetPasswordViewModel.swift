//
//  RessetPasswordViewModel.swift
//  matchGame
//
//  Created by 水元太陽 on 2024/08/31.
//

import Foundation
import FirebaseAuth

class RessetPasswordViewModel: ObservableObject {
  //  パスワードをリセットする関数
  func resetPassword(email: String) {
    Auth.auth().sendPasswordReset(withEmail: email) { error in
      if error != nil {
        print("error")
      }
    }
  }
}
