//
//  MyVsatckView.swift
//
//  Created by 맥북에어 on 2020/12/02.
//
import SwiftUI

struct MyVstackView: View {
    
    // 데이터를 연동시킴
    @Binding
    var isActivated: Bool
    
    // 생성자
    init(isActivated: Binding<Bool> = .constant(false)) {
        _isActivated = isActivated
    }
    
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
        .background(self.isActivated ? Color.gray : Color.green)
        .padding(self.isActivated ? 10 : 0)
        
    }
}


// 보여주기 용도
struct MyVsatckView_Previews: PreviewProvider {
    static var previews: some View {
        MyVstackView()
    }
}
