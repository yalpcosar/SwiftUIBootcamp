import Foundation

// MARK: - Ödev 1.1: Kişisel Bilgi Kartı


let ad: String = "Yağızalp"
let soyad: String = "Coşar"
let yas: Int = 28
let boy: Double = 1.80
let ogrenci: Bool = false
let email: String? = "yalpcosar@hotmail.com"

func bilgiYazdir() {
    print("Ad Soyad: \(ad) \(soyad)")
    print("Yaş: \(yas)")
    print("Boy: \(boy) m")
    print("Öğrenci: \(ogrenci ? "Evet" : "Hayır")")
    print("Email: \(email ?? "Belirtilmemiş")")
}

// MARK: - Ödev 1.2:

func hesapla(_ a: Double, _ b: Double, islem: String) -> Double? {
    switch islem {
    case "+": return a + b
    case "-": return a - b
    case "*": return a * b
    case "/": return b != 0 ? a / b : nil
    default: return nil
    }
}

let x = 10.0, y = 3.0

print("\(x) + \(y) = \(hesapla(x, y, islem: "+")!)")
print("\(x) - \(y) = \(hesapla(x, y, islem: "-")!)")
print("\(x) * \(y) = \(hesapla(x, y, islem: "*")!)")
print("\(x) / \(y) = \(hesapla(x, y, islem: "/")!)")

let sayilar = [15, 8, 23, 4, 42, 16, 7, 31]

print("Orijinal: \(sayilar)")

let ciftler = sayilar.filter { $0 % 2 == 0 }
print("Çift sayılar: \(ciftler)")

let sirali = sayilar.sorted { $0 < $1 }
print("Sıralı: \(sirali)")

let kareler = sayilar.map { $0 * $0 }
print("Kareler: \(kareler)")

let ciftVeSirali = sayilar.filter { $0 % 2 == 0 }.sorted()
print("Çift ve sıralı: \(ciftVeSirali)")
