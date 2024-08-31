//
//  SignIn.swift
//  matchGame
//
//  Created by 水元太陽 on 2024/08/31.
//

import SwiftUI

struct SignUp: View {
  var body: some View {
    NavigationStack {
      VStack {
        Image(systemName: "person.crop.circle.fill.badge.plus")
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
          .padding(.bottom, 10)
        
        SecureField("パスワード確認", text: .constant(""))
          .textFieldStyle(RoundedBorderTextFieldStyle())
          .padding(.horizontal, 30)
          .padding(.bottom, 20)
        
        NavigationLink {
          Login().toolbar(.hidden)
        } label: {
          Text("ログインはこちら")
        }
        
        Button(action: {
        }) {
          Text("会員登録")
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
}

#Preview {
    SignUp()
}
