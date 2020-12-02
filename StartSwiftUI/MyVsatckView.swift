//
//  MyVsatckView.swift
//
//  Created by 맥북에어 on 2020/12/02.
//
import SwiftUI

struct MyVstackView: View {
    var body: some View{
        VStack{
            Text("1!")
                .fontWeight(.bold)
                .font(.system(size: 60))
            Text("2!")
                .fontWeight(.bold)
                .font(.system(size: 60))
            Text("3!")
                .fontWeight(.bold)
                .font(.system(size: 60))
        } // Vstack
        .background(Color.red)
    }
}


// 보여주기 용도
struct MyVsatckView_Previews: PreviewProvider {
    static var previews: some View {
        MyVstackView()
    }
}
