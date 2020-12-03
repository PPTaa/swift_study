//
//  MyTextView.swift
//  StartSwiftUI
//
//  Created by 맥북에어 on 2020/12/03.
//

import SwiftUI

struct MyTextView: View {
    
    @Binding
    var isActivated: Bool
    
    init(isActivated: Binding<Bool> = .constant(false)) {
        _isActivated = isActivated
    }
    
    @State // 값의 변화를 감지 -> 처음부터 view애 적용
    private var index: Int = 0
    
    // 배경생 배열 준비
    private let backgroundColors = [
        Color.red,
        Color.yellow,
        Color.blue,
        Color.orange,
        Color.green
    ]
    
    var body: some View{
        VStack{
            
            Spacer()
            Text("배경 아이템 인덱스 \(self.index)")
                .font(.system(size: 30))
                .fontWeight(.bold)
                .frame(minWidth: 0, maxWidth: .infinity,
                       minHeight: 0, maxHeight: 100)
            Text("활성화 여부 \(String(isActivated))")
                .font(.system(size: 30))
                .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                .foregroundColor(self.isActivated ? Color.blue : Color.white)
                .background(Color.black)
            
            Spacer()
        }.background(backgroundColors[index])
        .edgesIgnoringSafeArea(.all)
        .onTapGesture{
            print("배경아이템 클릭")
            withAnimation{
                if (self.index == self.backgroundColors.count - 1){
                    self.index = 0
                } else {
                    self.index += 1
                }
            }
            
            
        }
    }
}

struct MyTextView_Previews: PreviewProvider {
    static var previews: some View {
        MyTextView()
    }
}
