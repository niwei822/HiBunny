//
//  UploadView.swift
//  HiBunny
//
//  Created by cecily li on 10/31/22.
//
import UIKit
import SwiftUI

struct UploadView: View {
    @State var showImagePicker: Bool = false
    @State var imageSelected: UIImage = UIImage(named: "appstore")!
    @State var sourceType: UIImagePickerController.SourceType = .camera
    var body: some View {
        ZStack {
            VStack {
                Button(action: {
                    sourceType = UIImagePickerController.SourceType.camera
                    showImagePicker.toggle()
                }, label: {
                    Text("Take photo".uppercased())
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .foregroundColor(Color.MyTheme.pinkColor)
                })
                .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .center)
                .background(Color.MyTheme.purpleColor)
                
                Button(action: {
                    sourceType = UIImagePickerController.SourceType.photoLibrary
                    showImagePicker.toggle()
                }, label: {
                    Text("Import photo".uppercased())
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .foregroundColor(Color.MyTheme.purpleColor)
                })
                .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .center)
                .background(Color.MyTheme.pinkColor)
            }
            .sheet(isPresented: $showImagePicker, content: {
                ImagePicker(imageSelected: $imageSelected, sourceType:  $sourceType)
            })
            
            Image("appstore")
                .resizable()
                .scaledToFit()
                .clipShape(Circle())
                .frame(width: 100, height: 100, alignment: .center)
                .shadow(radius: 12)
        }.edgesIgnoringSafeArea(.top)
    }
}

struct UploadView_Previews: PreviewProvider {
    static var previews: some View {
        UploadView()
    }
}
