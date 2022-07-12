//
//  CodableBundleExtension.swift
//  Touchdown
//
//  Created by e.mogilevich on 7/8/22.
//

import Foundation

extension Bundle {
    func decode<T: Codable>(_ file: String) -> T {
        //1. Hайдите файл json
        guard let url = self.url(forResource: file, withExtension: nil) else {
            fatalError("Failed to locate \(file) in bundle.")
        }

        //2. Cоздать свойство для данных
        guard let data = try? Data(contentsOf: url) else {
            fatalError("Failed to load \(file) from bundle.")
        }

        //3. Cоздать декодер
        let decoder = JSONDecoder()

        //4. Cоздать свойство для декодированных данных
        guard let decodedData = try? decoder.decode(T.self, from: data) else {
            fatalError("Failed to decode \(file) from bundle.")
        }

        //5. Вернуть готовые к использованию данные
        return decodedData
    }
}
