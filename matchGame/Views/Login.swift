//
//  Login.swift
//  matchGame
//
//  Created by 水元太陽 on 2024/08/30.
//

import SwiftUI

struct Login: View {
  var body: some View {
    VStack {
      Image(systemName: "lock.circle")
        .resizable()
        .frame(width: 80, height: 80)
        .foregroundColor(.blue)
        .padding(.bottom, 20)
      
      TextField("メールアドレス", text: .constant(""))
        .textFieldStyle(RoundedBorderTextFieldStyle())
        .padding(.horizontal, 30)
        .padding(.bottom, 10)
      
      SecureField("パスワード", text: .constant(""))
        .textFieldStyle(RoundedBorderTextFieldStyle())
        .padding(.horizontal, 30)
        .padding(.bottom, 20)
      
      Button(action: {
      }) {
        Text("ログイン")
          .font(.headline)
          .foregroundColor(.white)
          .padding()
          .frame(maxWidth: .infinity)
          .background(Color.blue)
          .cornerRadius(10)
          .padding(.horizontal, 30)
      }
    }
  }
}

#Preview {
  Login()
}
