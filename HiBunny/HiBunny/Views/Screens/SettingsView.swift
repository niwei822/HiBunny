//
//  SettingsView.swift
//  HiBunny
//
//  Created by cecily li on 11/4/22.
//

import SwiftUI

struct SettingsView: View {
    @Environment(\.presentationMode) var presentationMode
    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: false, content: {
                GroupBox(content: {
                    HStack(alignment: .center, spacing: 10, content: {
                        Image("appstore")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 100, height: 80, alignment: .center)
                            .cornerRadius(20)
                        Text("HiBunny is the #1 app for posting pictures of your bunny and sharing them acrross the world. Welcome to the bunny world!! Perfect for bunny lovers!")
                            .font(.footnote)
                    })
                }, label: {
                    SettingsLabelView(labelText: "HiBunny", labelImage: "dot.radiowaves.left.and.right")
                })
                .padding()
                
                GroupBox(label: SettingsLabelView(labelText: "Profile", labelImage: "person.fill"), content: {
                    NavigationLink(destination: SettingsEditTextView(submissionText: "current name", title: "String", description: "String", placeHolder: "Your display name..."), label: {
                        SettingsRowView(leftIcon: "pencil", text: "Display Name", color: Color.MyTheme.purpleColor)
                    })
                    
                    SettingsRowView(leftIcon: "text.quote", text: "Bio", color: Color.MyTheme.pinkColor)
                    SettingsRowView(leftIcon: "photo", text: "Profile Picture", color: Color.MyTheme.purpleColor)
                    SettingsRowView(leftIcon: "figure.walk", text: "Sign out", color: Color.MyTheme.pinkColor)
                })
                .padding()
                
                GroupBox(label: SettingsLabelView(labelText: "Application", labelImage: "apps.iphone"), content: {
                    SettingsRowView(leftIcon: "folder.fill", text: "Privacy Policy", color: Color.MyTheme.beigeColor)
                    SettingsRowView(leftIcon: "folder.fill", text: "Term & Conditions", color: Color.MyTheme.beigeColor)
                    SettingsRowView(leftIcon: "globe", text: "HiBunny's website", color: Color.MyTheme.beigeColor)
                })
                .padding()
//                GroupBox {
//                    Text("HiBunny was made with love. \n All Rights Reserved \n HiBunny Apps Inc. \n Copyright 2022 ❤️")
//                        .foregroundColor(.gray)
//                        .multilineTextAlignment(.center)
//                    frame(maxWidth: .infinity)
//                }
                //.padding()
                //.padding(.bottom, 80)
            })
            .navigationBarTitle("Settings")
            .navigationBarTitleDisplayMode(.large)
            .navigationBarItems(leading: Button(action: {
                presentationMode.wrappedValue.dismiss()
            }, label: {
                Image(systemName: "xmark")
                    .font(.title)
            })
                .accentColor(.primary)
            )
        }
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
