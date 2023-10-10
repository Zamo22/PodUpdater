import ArgumentParser
import Foundation

@main
struct PodUpdater: AsyncParsableCommand {

    @Argument(
        help: "Cocoapod file to be parsed.",
        transform: URL.init(fileURLWithPath:)
    )
    var file: URL

    static let configuration = CommandConfiguration(
        abstract: "A Swift command-line tool to print text"
    )

    mutating func run() async throws {
        let handle: FileHandle
        handle = try .init(forReadingFrom: file)

        for try await line in handle.bytes.lines {
            print(line)
        }

        try handle.close()
    }
}
