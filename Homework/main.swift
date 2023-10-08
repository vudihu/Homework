//
//  main.swift
//  Homework
//
//  Created by Hung Vu on 08/10/2023.
//

import Foundation

// 1. Trả về Vị trí đầu tiên của số lẻ, vị trí cuối cùng của số chẵn trong mảng bất kì.

func xacDinhViTri() {
    let mang = [-2, 0, 3.1, 4, 1, -3, 0, 9, 20, 4.5, 0, 8.1]
    if mang.isEmpty {
        print("Mảng rỗng")
    } else {
        for (index, value) in mang.enumerated() {
            if value != 0 && value.truncatingRemainder(dividingBy: 1) == 0 && Int(value) % 2 != 0 {
                print("Số lẻ đầu tiên là: \(Int(value)) tại index: \(index)")
                break
            }
        }
        for (index, value) in mang.enumerated().reversed() {
            if value != 0 && value.truncatingRemainder(dividingBy: 1) == 0 && Int(value) % 2 == 0 {
                print("Số chẵn cuối cùng là: \(Int(value)) tại index: \(index)")
                break
            }
        }
    }
}
xacDinhViTri()

// 2. Tìm số nhỏ nhất và lớn nhất trong mảng số nguyên.

func timSo() {
    let mangSoNguyen = [3, 0, -39, 2, 50, 8, 7, 10, -90]
    var number = mangSoNguyen[0]
    if mangSoNguyen.isEmpty {
        print("Mảng rỗng")
    } else {
        for value in mangSoNguyen {
            if value < number {
                number = value
            }
        }
        print("Giá trị nhỏ nhất trong mảng: \(number)")
        for value in mangSoNguyen {
            if value > number {
                number = value
            }
        }
        print("Giá trị lớn nhất trong mảng: \(number)")
    }
}
timSo()

// 3. Viết một minigame random các số từ 1 đến 100, cho người dùng đoán số nhập dữ liệu từ bàn phím

func checkRandom(_ number: Int) {
    let numberRandom = Int.random(in: 1...100)
    print("Số random là: \(numberRandom)")
    if number == numberRandom {
        print("Chúc mừng")
    } else if number > numberRandom {
        print("Số lớn quá")
    } else {
        print("Số nhỏ quá")
    }
}
checkRandom(56)


