//
//  SignIn.swift
//  matchGame
//
//  Created by 水元太陽 on 2024/08/31.
//

import SwiftUI

struct SignUp: View {
  @State private var email: String = ""
  @State private var password: String = ""
  @StateObject var signInViewModel = SignInViewModel()
  var body: some View {
    NavigationStack {
      VStack {
        Image(systemName: "person.crop.circle.fill.badge.plus")
          .resizable()
          .frame(width: 80, height: 80)
          .foregroundColor(.blue)
          .padding(.bottom, 20)
        
        TextField("メールアドレス", text: $email)
          .textFieldStyle(RoundedBorderTextFieldStyle())
          .padding(.horizontal, 30)
          .padding(.bottom, 10)
        
        SecureField("パスワード", text: $password)
          .textFieldStyle(RoundedBorderTextFieldStyle())
          .padding(.horizontal, 30)
          .padding(.bottom, 10)
        
        NavigationLink {
          Login().toolbar(.hidden)
        } label: {
          Text("ログインはこちら")
        }
        
        Button(action: {
          signInViewModel.signUp(email: email, password: password)
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
      NavigationLink(
        destination: Home(),
        isActive: Binding(
          get: { signInViewModel.isAuth },
          set: { signInViewModel.isAuth = $0 }
        ),
        label: {
          EmptyView()
        })
    }
  }
}

#Preview {
    SignUp()
}
