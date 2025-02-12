//
//  Bundle+decodeTests.swift
//  Africa
//
//  Created by Tiago de Oliveira on 09/02/25.
//

import XCTest

@testable import Africa

class BundleDecodingTests: XCTestCase {
    // MARK: - Teste de Sucesso

    func testDecodeSuccess() {
        let bundle = Bundle(for: type(of: self))
        let fileName = "validFile.json"
        XCTAssertNoThrow(
            try bundle.decode(DataModel.self, fileName),
            "A decodificação deve ser bem-sucedida"
        )
    }

    // MARK: - Teste de Arquivo Não Encontrado

    func testDecodeFileNotFound() {
        let bundle = Bundle(for: type(of: self))
        let fileName = "nonExistentFile.json"
        XCTAssertThrowsError(try bundle.decode(DataModel.self, fileName)) { error in
            XCTAssertEqual(error as? DecodingError, DecodingError.fileNotFound, "O erro deve ser fileNotFound")
        }
    }

    // MARK: - Teste de Falha na Decodificação

    func testDecodeFailure() {
        let bundle = Bundle(for: type(of: self))
        let fileName = "invalidFile.json"
        XCTAssertThrowsError(try bundle.decode(DataModel.self, fileName)) { error in
            XCTAssertEqual(error as? DecodingError, DecodingError.decodingFailed, "O erro deve ser decodingFailed")
        }
    }
}
